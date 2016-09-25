Author: Clarence Chan
Date: Sept 25th, 2016
E-mail: 947089399@qq.com

INTRODUCTION：
  This file is written to teach you how to install Qt4.8.7 and Ros(Jade edition) with the shells. 

CAUTION:
  Make sure you have set Chinese as a language environment in your Ubuntu system. (Check Settings->Language Support), or the Qt UI can not display Chinese.

STEPS:
1.Move this package folder to your home folder. Download "qt-everywhere-opensource-src-4.8.7.tar.gz" from http://download.qt.io and move it in this folder.
2.Run "InstallQt.sh" by "./InstallQt.sh" in command window.
3.Run "InstallRosJade.sh" the same way.
4.Install QtCreator if you want to edit the UI.
5.Copy Folder "Eigen" to "catkin_ws/devel/include" to use matrix manipulation in your code. If there is not a folder called "include" in "catkin_ws/devel", make one by command "mkdir".
6.Enjoy.

