   M S B A M L   `   `   `  ����   ArduinoCommunication%    ArduinoCommunication.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     -     �Name$  Button_turnon�� � Title$ 
MainWindow��$	��534��$	��893�� J� Opacity$
 0.85Q�
����  �
���   �
������� � 
ResizeMode$ NoResize=�$��0q� � WindowStyle$
 None=� � AllowsTransparency . .��� -    �Name$ Grid_parent�� � RowDefinitions �� $��36 ��� $
��142* ��� $��36 �����  �� EndPoint$ 0.5,1&�	 �� 
StartPoint$	 0.5,0&�.��� 
 � Color$
 Black�� � Offset$ 0Q�� $
 	#FF003F63��$ 1Q�.+��� -    ��Name$ Button_Close��$��終了��   ButtonTemplate#��[  $��	0,0,10,10q����	#00000000
�������
�������$��16(�$��Right=�$��92��$��38��$��Bottom=�$��1�� � ToolTip$ 終了します���� -    ��Name$ StatusBar_mystatus��$��2��$��0,0,0,0q����	#FF004D6A
�������.@�� $��20��$	��100��
���   �
��������� $
��Wrap=�$��状況説明：���� -    ��Name$ TextBlock_StatusCaption��$
��Wrap=�o� -    o�Name$ Menu_MyMenu�����	#FF003346
�������.@�m� -   $��	MenuItem1��$��ファイル(_F)��$ ファイル(F)��.@�m� $��新規作成(_N)�� m� Command$	 New��m� $��
保存(_A)��$ SaveAs���� m� -   $��
終了(_X)��$ 終了します��m� -	   $��	MenuItem2��$��ウィンドウ(_W)��$ ウィンドウ(W)��.@�m� $��CIPCTCPConnectionWindow��$X RCIPCに接続する操作を行うウィンドウを表示・非表示します．��m� $��
保存(_A)��$ SaveAs���� $��1��.+���  �� Orientation$ 
Horizontal=�.+��� .+��� $��角度���� -
    ��Name$ Slider_Deg1�� � Minimum$ 0Q� � Maximum$	 180Q�$	��200�� �� AutoToolTipPlacement$ TopLeft=� � Value ��  �� ElementName$ Textbox_test�� �� Path$
 Text��� -    ��Name$ Textbox_test��$��50��