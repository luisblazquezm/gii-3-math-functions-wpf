   M S B A M L   `   `   `  ����C  ?WinMaths, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:WinMathsWinMaths  5   	   7 clr-namespace:WinMaths.src.viewsWinMaths.src.views  5   	   ,    &WinMaths.src.views.ModificationsWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   X TXceed.Wpf.Toolkit, Version=3.4.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5   	   #customclr-namespace:WinMaths  5   	   ,local clr-namespace:WinMaths.src.views  5   	     � Title$  ModificationsWindow��5
   	   $��300.56��6%   $��367.709��65   .��5      �  � ColumnDefinitions 5   
   �� 5      �� 5       � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      .+�5   
   � $��2��6   $��0��6(   $��Center=�65   $��Center=�6P   .+�5      �� $��Nombre de la Gráfica:��6   $	��152��64   �� 5      -   5        $��NameModTextBox��5      $	��183��6,   5      � 5   
   $��2��6   $��1��6(   $��Center=�65   $��Center=�6P   .+�5      �� $"��Función de Representación:��6   �� 5      -   5        $��FunctionModComboBox��5      $	��180��62   5       � 5"   
   $��2��6   $��2��6(   $��Center=�65   $��Center=�6P   .+�5#      �� $��A:��6   "   WinMaths.NumericTextBoxClass  5$      -   5          Name$ ParamAModTextBox��5$   )   
������ $��90��6\   $��1,1,1,1q�6g   �� 5%      $��B:��6     5&      -   5        $ ParamBModTextBox��5&   )   
������ $��90��6\   $��1,1,1,1q�6g   �� 5'      -   5        $��ParamCLabel��5'      $��C:��6'     5(      -   5        $ ParamCModTextBox��5(   )   
������ $��90��6\   $��1,1,1,1q�6g   5)      � 5+   
   $��2��6   $��3��6(   $��Center=�65   $��Center=�6P   .+�5,      �� $��Color de Gráfica:��6   #  Xceed.Wpf.Toolkit.ColorPicker  5-      -   5        $��ColorModColorPicker��5-      $��5q�6:   $	��180��6E   5.      �� 50   
   -   5        $��ConfirmButton��50      $��0��6&   $��4��66   $��Confirmar cambios��6C   $��20��6_   $	��120��6k   $��10(�6w   
�������
���   �
���   �6�   �� 51   
   -	   5        $��CancelButton��51      $��1��6&   $��4��66   $��Cancelar modificar��6C   $��20��6`   $	��120��6l   $��10(�6x   
�������
���   �
���   �6�   53      54      