   M S B A M L   `   `   `  ����  ArduinoCommunication    myparts.myDialog   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  myDialog��5   	   $	��155��6   $	��229��6'    J� Opacity$
 0.75Q�63   
����������	#FF040000
������� � 
ResizeMode$ NoResize=�6�   $��3q�6�    � WindowStyle$
 None=�6�    � AllowsTransparency .  � WindowStartupLocation$ CenterScreen=�6�   '  !System.Windows.Shell.WindowChrome   WindowChrome 5        5   
      CaptionHeight# ZJ�6   %  System.Windows.SystemParameters"   WindowResizeBorderThickness	   ResizeBorderThickness#	 Z 5      .��5	      � 
 � RowDefinitions
 5
   
   �� 5      $	��29* �6   �� 5      $	��19* �6    � ColumnDefinitions 5   
   �� 5      �� 5      ��5   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5      �  � Color$ Black��6    � Offset$ 0Q�6-   � 5      $ 	#FF4F4F4F��6   $ 1Q�61   5      .+�5   
   �� -   5         ��Name$ 
button_yes��5      $��承認��6%      ButtonTemplate#��[  62   $��10q�6]   ���	#00000000
�������
�������$��1��6�   $��16(�6�   �� 5   
   -   5        $ 	button_no��5      $��拒否��6$   #��[  61   $��10q�6\   ���	#00000000
�������
�������$��1��6�   $��1��6�   $��16(�6�   �� 5   
   -   5         ��Name$ 	TEXTBLOCK��5      $��10q�6'   $
��Wrap=�63   $��	TextBlock��6G   $��2��6X   5      5      