   M S B A M L   `   `   `  ����U  QCH02.CommonWindowsTemplate, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:CH02.CommonWindowsTemplateCH02.CommonWindowsTemplate  5   	   +    %CH02.CommonWindowsTemplate.MainWindow   5   	   W SPresentationCore, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:CH02.CommonWindowsTemplate     5   	     � Title$  CommonWindowsView��5   	   $	��600��6#   $	��800��60   .��5      ]� .+�5   
   o� $	��Top=�6   .@�5      m� $
��File��6   .@�5      m� $	��New��6   m� 5      $
��Open��6   m� 5      $��Print��6   m� 5      $��CLose��6   m� 5      $
��Exit��6   5      m� 5      $
��Edit��6   .@�5      m� $
��Undo��6   m� 5      $
��Redo��6   5      m� 5      $
��View��6   m� 5      $	��Git��6   m� 5      $��Project��6   5      c� 5-   
   $	��Top=�6   .@�5.      �� -   5        .��5/      �� $��Icons/add_icon.png��6   $��20��64   $��20��6?   50      �� 51      .��52      �� $��Icons/delete_icon.png��6   $��20��67   $��20��6B   53      �� 54      .��55      �� $��Icons/save_icon.png��6   $��20��65   $��20��6@   56      �� 58      $	��Run��6   �� 59      $��Debug��6   5;      � 5>   
    � ColumnDefinitions 5@      �� 5A      $	��150 �6#   �� 5C      $��* �6#   .+�5H      R� $��0��6   .@�5I      Q� $
��Home��6   .@�5J      Q� $��Reports��6#   Q� 5K      $��Invoices��6#   5L      Q� 5M      $��	Documents��6   .@�5N      Q� $��Reports��6#   Q� 5O      $��Invoices��6#   5P      Q� 5Q      $��Settings��6   .@�5R      Q� $��Reports��6#   Q� 5S      $��Invoices��6#   5T      5U      �� 5X      $��1��6   .@�5Z      �� $��Text Editor��6   .��5[      � $��10q�6    � RowDefinitions 5\      �� 5]      $
��Auto �6,   �� 5_      $��* �6,   �� 5a      $��3* �6,   .+�5f      �� $��0��6%    �� Orientation$ 
Horizontal=�62   $��5q�6K   .+�5g      �� -   5        $��	Load File��5g   %   $	��100��69   $��0,0,0,0q�6_   �� 5h      -   5        $��Delete File��5h   %   $	��100��6;   $��5,0,0,0q�6c   �� 5i      -   5        $��	Save File��5i   %   $	��100��69   $��5,0,0,0q�6_   5j      �� 5m      -   5        $��FileList��5m   "   $��1��62   $
��Auto��6?   $
��Auto��6M   $��5q�6Z   6e   �� 5p      $��2��6'   $��5q�64   .��5q      �� -   5        $��FilePreview��5q   &   $
��Auto��69   $
��Auto��6F    �� TextWrapping$
 Wrap=�6T    �� AcceptsReturn$
 True��6h   5r      5s      5t      �� 5v      $��Overview��6   5x      �� 5z      $��Details��6   5|      5~      5      5�      5�      