   M S B A M L   `   `   `  ����   ArduinoCommunication    ArduinoCommunication.App   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       �� 	Resources     ButtonTemplate �� 
TargetType ��Name �� CornerRadius �� Padding'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard �� 
TargetName	 �� TargetProperty	
 �� To g� Duration �� 
TargetType �� Property �� Value  NormalBrush �� 
StartPoint �� EndPoint � Color � Offset  HorizontalNormalBrush  
LightBrush  HorizontalLightBrush  	DarkBrush  PressedBrush  DisabledForegroundBrush �� Color  DisabledBackgroundBrush 	 WindowBackgroundBrush 
 SelectedBackgroundBrush  NormalBorderBrush  HorizontalNormalBorderBrush  DefaultedBorderBrush  PressedBorderBrush  DisabledBorderBrush  SolidBorderBrush  LightBorderBrush  
GlyphBrush  LightColorBrush m� IsSubmenuOpen � AllowsTransparency J� SnapsToDevicePixels K� IsItemsHost-  'System.Windows.Input.KeyboardNavigation   DirectionalNavigation �� Triggers P� Property P� Value �� 
TargetName P� 
SourceName � ColumnDefinitions z� SharedSizeGroup  ��Name! m� InputGestureText" � HorizontalOffset# �� Triggers $ m� TopLevelHeaderTemplateKey% m� TopLevelItemTemplateKey& m� SubmenuHeaderTemplateKey' m� SubmenuItemTemplateKey(   TabNavigation) � RowDefinitions8  2System.Windows.Media.Animation.EasingColorKeyFrame* �� KeyTime+ �� Value, ��Name- K� ZIndex.   TabIndex/ ��Name0 �Name<  6System.Windows.Media.Animation.EasingThicknessKeyFrame1 p� KeyTime2 p� Value��%�  &	        '_�     &	 W    &	 �    &	     &	 Y    &	 �    &	     &	 �    &	 �    &		 �    &	
 �    &	 �    &	 %    &	 {    &	 �    &	 '    &	 7    &	 G    &	 W    &	 g    (�� w    *MenuItem.SeparatorStyleKey+)7  (�� �    *$"MenuItem.TopLevelHeaderTemplateKey+)7  (�� |    *" MenuItem.TopLevelItemTemplateKey+)7  (�� o	    *!MenuItem.SubmenuItemTemplateKey+)7  7  7  7  (�� �    *#!MenuItem.SubmenuHeaderTemplateKey+)7  7  7 
 7  'm� ]    7$ 7% 7& 7' '�� �    '��     7   '�� d    '�� �    '�� 8    �� " ��.R��� $ border��$ 3��$ 1q�$��3q�#��z��#��z��   CommonStates��.   
Normal��  	MouseOver��. �� .���� $ border��$1	 +(Border.Background).(SolidColorBrush.Color)�$
 	#BF3A0000X�$ 0D�._��� $��Center=�$��Center=��� " _�.���  � �� �	#22000000��  � �� �	#CCFFFFFF�� $	 0,0&�$	 0,1&���� � $
 #FFF��$	 0.0Q�� $
 #CCC��$	 1.0Q��� $	 0,0&�$	 1,0&���� � $
 #FFF��$	 0.0Q�� $
 #CCC��$	 1.0Q��� $	 0,0&�$	 0,1&���� � $
 #FFF��$	 0.0Q�� $
 #EEE��$	 1.0Q��� $	 0,0&�$	 1,0&���� � $
 #FFF��$	 0.0Q�� $
 #EEE��$	 1.0Q��� $	 0,0&�$	 0,1&���� � $
 #FFF��$	 0.0Q�� $
 #AAA��$	 1.0Q��� $	 0,0&�$	 0,1&���� � $
 #BBB��$	 0.0Q�� $
 #EEE��$	 0.1Q�� $
 #EEE��$	 0.9Q�� $
 #FFF��$	 1.0Q��� $
 #888���� $
 #EEE���� $
 #FFF���� $
 #DDD���� $	 0,0&�$	 0,1&���� � $
 #CCC��$	 0.0Q�� $
 #444��$	 1.0Q��� $	 0,0&�$	 1,0&���� � $
 #CCC��$	 0.0Q�� $
 #444��$	 1.0Q��� $	 0,0&�$	 0,1&���� � $
 #777��$	 0.0Q�� $
 #000��$	 1.0Q��� $	 0,0&�$	 0,1&���� � $
 #444��$	 0.0Q�� $
 #888��$	 1.0Q��� $
 #AAA���� $
 #888���� $
 #AAA���� $
 #444���� $
 #DDD���� " ��.���  � ��$ 1����  � ��$ 0,4,0,4q���  � �� �� " ��.R��� 8��  $��1q��� " m�.R��� $��Border��._�� .+��� $��6,3,6,3q�$��Header����. � $��Popup��$��Bottom=�#��z  . |�.  $
��Fade=�.���� $��SubmenuBorder�� . ���	#55000000���	#FFFFFFFF$��2q�._���  . $ Cycle=� P� " �@m�IsSuspendingPopupAnimation . . ��� $ Popup�� � ��$
 None=�P�  �@m�IsHighlighted . . ��� $ Border�� � �� �	#55000000�� $ Border�� � ��
 ���� P� $ Popup�� �@�AllowsTransparency . . ��� $ SubmenuBorder�� �@��CornerRadius$ 0,0,0,0���� $ SubmenuBorder�� �@��Padding$ 0,0,0,0q�P�  � {� .  . ��� 8    � ���� " m�.R��� $��Border��._�� .+��� $��6,3,6,3q�$��Header����.  P�  �@m�IsHighlighted . . ��� $ Border�� � �� �	#55000000�� $ Border�� � ��
 ���� P�  � {� .  . ��� 8    � ���� " m�.R��� $��Border��._��  �� $
��Auto �$
 Icon���� $��* ��� $
��Auto �$ Shortcut���� $��13 �.+��� $
��Icon��$��6,0,6,0q�$��Center=�$
��Icon���� $��Check��$��13��$��13��$y�	Collapsed=�$��6,0,6,0q�8��  $��1q�8�� ._�F� $��	CheckMark��$��7��$��7��$y�Hidden=� .  8�� $��2��+����        ���j ��j �    ��j ���j     	�� $��
HeaderHost��$��1��$��Header����. �� $  InputGestureText��$��2��#��z! $��5,2,0,2q�$��Right=� P�  Z�  �@m�Icon. ��� $
 Icon�� � y�$ Hidden=�P�  �@m�	IsChecked . . ��� $ 	CheckMark�� � y�$ Visible=�P�  �@m�IsCheckable . . ��� $ Check�� � y�$ Visible=��� $
 Icon�� � y�$ Hidden=�P�  �@m�IsHighlighted . . ��� $ Border�� � �� �	#88000000P�  � {� .  . ��� 8   � ���� " m�.R��� $��Border��._��  �� $
��Auto �$
 Icon���� $��* ��� $
��Auto �$ Shortcut���� $��13 �.+��� $
��Icon��$��6,0,6,0q�$��Center=�$
��Icon���� $��
HeaderHost��$��1��$��Header����. �� $  InputGestureText��$��2��#��z! $��5,2,2,2q�$��Right=�F� $��3��$��Center=�$��Center=�"����        �    ��j � 	= �g5 	8��  � $��Popup��$��Right=�$" -4��#��z  . |�.  $
��Fade=�.���� $��SubmenuBorder�� . ���	#000000008�� $��1q�._���  . $ Cycle=� P�  Z�  �@m�Icon. ��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�IsHighlighted . . ��� $ Border��8   � ��P� $ Popup�� �@�AllowsTransparency . . ��� $ SubmenuBorder�� �@��CornerRadius$ 4���� $ SubmenuBorder�� �@��Padding$ 0,3,0,3q�P�  � {� .  . ��� 8   � ���� " m�.���  �@�OverridesDefaultStyle . # P�  �@m�Role$ TopLevelHeader=�. ���  � ��8   ��  �@�IsSharedSizeScope . P�  �@m�Role$ TopLevelItem=�. ���  � ��8  P�  �@m�Role$ SubmenuHeader=�. ���  � ��8  P�  �@m�Role$ SubmenuItem=�. ���  � ��8  �� " ��.���  �@�OverridesDefaultStyle . ��  �@J�SnapsToDevicePixels . ��  � �� �� " ��.R�� $( Local=�) �� $
��Auto ��� $��* �   CommonStates��.   Disabled��. �� .���� $ Border��$G	 A(Border.BorderBrush).                     (SolidColorBrush.Color)�.g�  $* 0��$+ 	#FFFFFFFF��.+��� $, HeaderPanel��$��0��$- 1��$��0,0,4,-1q� . $. 1��
������ �� $ Border��$��1��$��0q�$ 2��$( Local=�$ 	Contained=�$. 2����Z� ���� $ White��._��� $/ PART_SelectedContentHost��$��4q�$��SelectedContent���� " ��.���  � ��8   ��  � �� �	#00000000��  � ��
 ������� " ��.���  � �� �� " ��.R�� $
0 Root��   SelectionStates��.   
Unselected��  Selected��. �� .���� $ Border��$E	 ?(Panel.Background).                     (SolidColorBrush.Color)�.g�  $* 0��$+ 	#CC999999��r� $	 (Border.BorderThickness)�$ Border��.	�  $1 0��$2 1,1,1,0q�  CommonStates��.   
Normal��  	MouseOver��  Disabled��. �� .���� $ Border��$E	 ?(Panel.Background).                     (SolidColorBrush.Color)�.g�  $* 0��$+ Yellow���� $ Border��$G	 A(Border.BorderBrush).                     (SolidColorBrush.Color)�.g�  $* 0��$+ Black��.+��� $ Border��$��0,0,-4,0q�$��1,1,1,1q�$ 2�����	#00000000���� $ 	#00000000��._��� $/ ContentSite��$��Center=�$��Center=�$��Header��$��	12,2,12,2q���.  P�  �@��
IsSelected . . ���  �@K�ZIndex$	 100���� " ��.���  � ��
 ���� ��  � ��
 ������� " ��.���  � ��
 �����