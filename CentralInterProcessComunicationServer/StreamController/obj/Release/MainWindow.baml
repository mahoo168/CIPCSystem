   M S B A M L   `   `   `  ����   StreamController!    StreamController.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � Title$  
MainWindow��$	��534��$	��893�� J� Opacity$	 0.9Q����	#FF40006C
���   �
������� � 
ResizeMode$ NoResize=�$��0q� � WindowStyle$
 None=� � AllowsTransparency . '  !System.Windows.Shell.WindowChrome   WindowChrome      CaptionHeight# ZJ�%  System.Windows.SystemParameters"   WindowResizeBorderThickness   ResizeBorderThickness# Z .��� ���� 	 �� EndPoint$	 0.5,1&�
 �� 
StartPoint$
 0.5,0&�.���  � Color$ Black��� $ 	#FF3E00AA�� � Offset$ 1Q�.+��� -    ��Name$ Button_Exit��$��終了��$��	0,0,10,10q�
�������
�������$��24��$��Bottom=�$��Right=�$��75������  �� Color$ 	#00000000�� �� Opacity$
 0.75Q��� $��クライアント設定��$
��Left=�$��	10,33,0,0q�$	��Top=�$	��432��$	��350��.��� .+��� $��クライアント名��$	��Top=�$��68��$��10,10,138,0q�.��� .+��� -    ��Name$ textbox_clientname��$��10,10,10,10q�$��StreamController���� $��myPort��$��204,10,10,0q�$	��Top=�$��68��.���� -   $ textbox_clientmyport��$��10,10,10,10q�$��11000�� �� TextAlignment$ Right=��� $��
serverPort��$
��Left=�$��	10,83,0,0q�$	��Top=�$��68��$	��109��.���� -   $ textbox_serverport��$��10,10,10,10q�$��12000��$ Right=��� $��serverIP��$��124,83,10,0q�$	��Top=�$��68��.��� $��0,0,0,0q�.+��� $��0,0,0,0q�$/��)         .          .          .         ��$��Center=�$��Center=��� -   $ 
remoteIP_1��$
��Left=�$��
10,10,0,10q�$	��127��$��39�� �� 	MaxLength$ 3�� �� AcceptsReturn . $��Right=��� -   $ 
remoteIP_2��$
��Left=�$��
54,10,0,10q�$��0��$��39��$ 3��$��Right=��� -   $ 
remoteIP_3��$
��Left=�$��
98,10,0,10q�$��0��$��39��$ 3��$��Right=��� -   $ 
remoteIP_4��$��142,10,11,10q�$��1��$ 3��$��Right=��� $��接続モード��$��
10,156,0,0q�$	��Top=�$��68��$
��Left=�$	��189��.��� $��0,0,0,0q�.+�	� -	    	�Name$ radiobutton_sender��$��Sender��$
��Left=�$��	10,10,0,0q�$	��Top=�
�������	� -
   $ radiobutton_receiver��$��Receiver��$��	88,10,0,0q�$	��Top=�
�������$
��Left=�$��66�� d� 	IsChecked$
 TrueY��� $��ファイル名��$��10,229,10,0q�$	��Top=�$��68��.��� .+��� -   $ textbox_filename��$��10,10,90,10q�$��data\default.scd��$��Center=��� -   $ SelectFolder��$��選択��$��	0,0,10,10q�
�������
�������$��24��$��Bottom=�$��Right=�$��75������ $
 0.75Q��� -   $ StreamWindowLunchButton��$��起動��$��	0,0,10,10q�
�������
�������$��24��$��Bottom=�$��Right=�$��75������ $ 	#00000000��$
 0.75Q��� $	��FPS��$��204,156,10,0q�$	��Top=�$��68��.���� -   $ textbox_fps��$��	10,5,10,0q�$��30��$	��Top=�$ Right=��� -    ��Name$ CheckBox_AutoSetting��$��自動設定��$��	10,0,0,10q�$
��Left=�$��74��$��18��$��Bottom=�
��������� -    ��Name$ ProcessName��$
��Left=�$��	10,10,0,0q�$��title��$	��Top=��� -   $ Button_Restart��$��	再起動��$��	0,0,90,10q�
�������
�������$��24��$��Bottom=�$��Right=�$��75������ $ 	#00000000��$
 0.75Q��� $!��クライアントリスト��$
��Left=�$��
365,33,0,0q�$	��Top=�$	��432��$	��265��.���� -    ��Name$ 
ListBox_SW��$��0,0,0,0q�
����������� $	 0.5,1&� � MappingMode$ RelativeToBoundingBox=�$
 0.5,0&�.��� $ Black��$ 1Q�� $ 	#FF3A0038���� $��CIPCTerminal接続��$
��Left=�$��
635,33,0,0q�$	��Top=�$	��432��$	��248��