﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.IO;


namespace StreamController
{
    /// <summary>
    /// StreamWindow.xaml の相互作用ロジック
    /// </summary>
    public partial class StreamWindow : Window
    {
        #region field

        private MainWindow parent;
        private Task task;
        private System.Threading.CancellationTokenSource CTS;
        private byte[] data;
        private CIPC_CS.CLIENT.CLIENT cipc;
        private FPSAdjuster.FPSAdjuster Fps_cipc;
        private DateTime starttime;
        private uint currentframe;
        private BinaryWriter writer;
        private BinaryReader reader;
        private System.Diagnostics.Stopwatch stopwatch;
        #endregion

        #region propaties
        public StreamClient SC { set; get; }
        public bool IsClosed { get; set; }
        public bool IsRecStarted { get; set; }
        public bool IsSendStarted { set; get; }
        #endregion


        /// <summary>
        /// デフォルトコンストラクタ
        /// 使用しない
        /// </summary>
        public StreamWindow()
        {
            InitializeComponent();
            this.MouseLeftButtonDown += (sender, e) => this.DragMove();
            
        }

        
        /// <summary>
        /// オーバーロードコンストラクタ
        /// 各種設定を追加
        /// </summary>
        /// <param name="parent"></param>
        /// <param name="name"></param>
        public StreamWindow(MainWindow parent, StreamClient SC) 
        {
            InitializeComponent();
            this.MouseLeftButtonDown += (sender, e) => this.DragMove();
            this.Closing += StreamWindow_Closing;
            
            this.SC = SC;
            this.TitleText.Text = this.SC.name;
            this.textblock_settingdata.Text
                = "MyPort : " + this.SC.myport.ToString() + "\n"
                + "ServerIP : " + this.SC.serverIP + "\n"
                + "ServerPort : " + this.SC.serverport.ToString() + "\n"
                + "Mode : " + this.SC.mode.ToString() + "\n"
                + "FPS : " + this.SC.fps.ToString() + "\n"
                + "filepath : " + this.SC.filename + "\n";


            #region set button and file open.
            switch (this.SC.mode)
            {
                case MODE.Sender:
                    this.Button_Start.IsEnabled = true;
                    this.Button_RecStart.IsEnabled = false;
                    this.reader = new BinaryReader(File.OpenRead(this.SC.filename));
                    this.progressbar_datastream.Maximum = this.reader.BaseStream.Length;
                    break;
                case MODE.Receiver:
                    this.Button_Start.IsEnabled = false;
                    this.Button_RecStart.IsEnabled = true;
                    this.writer = new BinaryWriter(File.OpenWrite(this.SC.filename));
                    break;
                default: 
                    break;
            }

            #endregion



            this.cipc = new CIPC_CS.CLIENT.CLIENT(this.SC.myport, this.SC.serverIP, this.SC.serverport, this.SC.name, this.SC.fps);
            this.CTS = new System.Threading.CancellationTokenSource();
            
            this.Fps_cipc = new FPSAdjuster.FPSAdjuster();
            this.Fps_cipc.Fps = this.SC.fps;

            this.task=new Task(() => maintask(), this.CTS.Token);
            this.task.Start();

            this.parent = parent;
            this.IsRecStarted = false;
            this.IsSendStarted = false;
            this.IsClosed = false;
        }

        #region task

        private void maintask()
        {
            this.Fps_cipc.Start();
            switch (this.SC.mode)
            {
                case MODE.Sender:
                    this.ViewModeTask();
                    break;
                case MODE.Receiver:
                    this.RecModeTask();
                    break;
                default:
                    break;
            }
        }

        #region REC_TASK
        private void RecModeTask()
        {
            try
            {
                this.cipc.Setup(CIPC_CS.CLIENT.MODE.Receiver);
                this.stopwatch = new System.Diagnostics.Stopwatch();
                this.stopwatch.Start();
                this.cipc.DataReceived += cipc_DataReceived;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message + this.ToString());
            }
        }

        void cipc_DataReceived(object sender, byte[] e)
        {
            this.data = e;
            this.REC_data();
            this.currentframe++;
            this.UpdateUI_REC();
        }

        protected virtual void REC_data()
        {
            if (this.IsRecStarted)
            {
                this.writer.Write((uint)this.currentframe);
                this.writer.Write((long)this.stopwatch.ElapsedMilliseconds);
                this.writer.Write((int)this.data.Length);
                this.writer.Write(this.data);
            }
        }

        private void UpdateUI_REC()
        {
            this.Dispatcher.BeginInvoke(new Action(() =>
            {
                this.progressbar_dataamounts.Value = this.data.Length;
                this.textblock_dataamounts.Text = this.data.Length.ToString();
                this.textblock_nowtime.Text = "現在時刻：" + DateTime.Now.ToString();
                this.textblock_states.Text = "状　　態：録画" + this.IsRecStarted;
                if (this.IsRecStarted)
                {
                    this.textblock_starttime.Text = "開始時刻：" + this.starttime;
                    TimeSpan TS = DateTime.Now - this.starttime;
                    this.textblock_passedtime.Text = "経過時間：" + TS.ToString();
                    this.textblock_nowfram.Text = "フレーム：" + this.currentframe;
                }

            }));
        }

        #endregion

        #region VIEW_TASK
        private void ViewModeTask()
        {
            try
            {
                this.cipc.Setup(CIPC_CS.CLIENT.MODE.Sender);
                while (!this.CTS.IsCancellationRequested)
                {
                    this.VIEW_data();
                    if (this.IsSendStarted)
                    {
                        this.cipc.Update(ref this.data);
                    }
                    this.UpdateUI_VIEW();
                    this.Fps_cipc.Adjust();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message + this.ToString());
            }
        }

        protected virtual void VIEW_data()
        {
            if (this.IsSendStarted)
            {
                try
                {
                    this.currentframe = this.reader.ReadUInt32();
                    this.reader.ReadInt64();
                    this.data = this.reader.ReadBytes(this.reader.ReadInt32());
                }
                catch (Exception ex)
                {
                    this.finish();
                }
            }
        }

        private void UpdateUI_VIEW()
        {
            this.Dispatcher.BeginInvoke(new Action(() =>
            {
                
                
                this.textblock_nowtime.Text = "現在時刻：" + DateTime.Now.ToString();
                this.textblock_states.Text = "状　　態：送信" + this.IsSendStarted;
                if (this.IsSendStarted)
                {
                    this.textblock_dataamounts.Text = this.data.Length.ToString();
                    this.progressbar_dataamounts.Value = this.data.Length;
                    this.textblock_starttime.Text = "開始時刻：" + this.starttime;
                    TimeSpan TS = DateTime.Now - this.starttime;
                    this.textblock_passedtime.Text = "経過時間：" + TS.ToString();
                    this.textblock_nowfram.Text = "フレーム：" + this.currentframe;
                    this.progressbar_datastream.Value = this.reader.BaseStream.Position;
                }

            }));
        }
        #endregion

        private void finish()
        {
            this.IsRecStarted = false;
            this.IsSendStarted = false;
            switch (this.SC.mode)
            {
                case MODE.Sender:
                    this.reader.Close();
                    break;
                case MODE.Receiver:
                    this.writer.Close();
                    break;
                default:
                    break;
            }
        }
        #endregion

        #region UI event
        void StreamWindow_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            try
            {
                this.writer.Close();
            }
            catch (Exception ex)
            {
                
            }
            try
            {
                this.reader.Close();
            }
            catch (Exception ex)
            {

            }


            this.IsClosed = true;
            this.finish();
            this.CTS.Cancel();
            this.cipc.Close();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Button_RecStart_Click(object sender, RoutedEventArgs e)
        {
            this.starttime = DateTime.Now;
            this.currentframe = 0;
            this.IsRecStarted = true;
            this.Button_RecStart.IsEnabled = false;
        }

        private void Button_Start_Click(object sender, RoutedEventArgs e)
        {
            this.starttime = DateTime.Now;
            this.currentframe = 0;
            this.IsSendStarted = true;
            this.Button_Start.IsEnabled = false;
        }

        private void Button_Stop_Click(object sender, RoutedEventArgs e)
        {
            this.finish();
        }
        #endregion
    }
}