   M S B A M L   `   `   `  ����   StreamController#    StreamController.StreamWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     -     �Name$  StreamTaskWindow�� � Title$ StreamWindow��$	��300��$	��300�� J� Opacity$
 0.85Q�
�������
���   �
������� � 
ResizeMode$ NoResize=� � WindowStyle$
 None=� � AllowsTransparency . .��� ����  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ Black��	 � Offset$	 1Q�� $ 	#FF3600AA��.+��� -   $��終了��$��	0,0,10,10q�$��24��$��Bottom=�$��Right=�$��75������ 
 �� Color$
 Black�� �� Opacity$
 0.75Q��� -    ��Name$ 	TitleText��$
��Wrap=�$	��Top=�$��
10,10,10,0q�$��20�����	#FF190038$
 0.75Q� �� TextAlignment$ Center=��� 
�������$��3q�$	��120��$��
10,70,10,0q�$	��Top=� �� CornerRadius$ 3��._��� -   $ textblock_settingdata��$��	TextBlock��$
 0.65Q�$
��Auto=���. �� $��通信データ量 [Byte]��$
��Left=�$��
10,195,0,0q�$	��Top=�$��66��$	��280��.��� $��0,0,0,0q�.+��� -   $ textblock_dataamounts��$��189,10,10,12q�$
��Wrap=���  � Language$ ja-jp�$�0��� -    �Name$ progressbar_dataamounts��$
��Left=�$��
10,10,0,10q�$	��164�����	#FF870000
���   �
������� � Maximum$ 65515Q�9� $��録画・再生��$
��Left=�$��	10,35,0,0q�$	��Top=�
�������$	��280��.��� $	 0.9Q�$	��230������ $ 0.5,1&�$ 0.5,0&�.��� $ Black��$	 0Q�� $ 	#CC4500DA��$	 1Q�.+��� $��操作��$��10q�.��� $��0,0,0,0q�.+��� -    ��Name$ Button_RecStart��$��録画開始��$��
0,0,161,10q�$��24��$��Bottom=�$��Right=�$��75���� -   $ Button_Start��$��再生開始��$��	0,0,81,10q�$��24��$��Bottom=�$��Right=�$��75���� -	   $ Button_Stop��$��停止��$��	0,0,10,10q�$��24��$��Bottom=�$��Right=�$��66���� 
�������$��1q�$
��Left=�$	��113��$��	10,10,0,0q�$	��Top=�$	��226��$ 3��._��� .+��� -
   $ textblock_starttime��$
��Wrap=�$��開始時刻：���� -   $ textblock_nowtime��$
��Wrap=�$��現在時刻：���� -   $ textblock_passedtime��$
��Wrap=�$��経過時間：���� -   $ textblock_nowfram��$
��Wrap=�$��フレーム：���� -   $ textblock_states��$
��Wrap=�$��状　　態：���� -   $ textblock_remaintime��$
��Wrap=��� $�残り時間：���� $ ja-jp�$�	未実装��� -   $ progressbar_datastream��$
��Left=�$��10��$��
10,133,0,0q�$	��Top=�$	��226�����	#FF0015E6
���   �