# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'openapk.ui'
#
# Created: Sun Aug 18 13:10:42 2013
#      by: PyQt4 UI code generator 4.8.4
#
# WARNING! All changes made in this file will be lost!

from PyQt4 import QtCore, QtGui

try:
    _fromUtf8 = QtCore.QString.fromUtf8
except AttributeError:
    _fromUtf8 = lambda s: s

class Ui_Open_Dialog(object):
    def setupUi(self, Dialog):
        Dialog.setObjectName(_fromUtf8("Dialog"))
        Dialog.resize(491, 391)
        self.label = QtGui.QLabel(Dialog)
        self.label.setGeometry(QtCore.QRect(80, 30, 132, 23))
        self.label.setObjectName(_fromUtf8("label"))
        self.checkBox_cfg = QtGui.QCheckBox(Dialog)
        self.checkBox_cfg.setGeometry(QtCore.QRect(190, 30, 131, 23))
        self.checkBox_cfg.setChecked(True)
        self.checkBox_cfg.setObjectName(_fromUtf8("checkBox_cfg"))
        self.listWidget = QtGui.QListWidget(Dialog)
        self.listWidget.setGeometry(QtCore.QRect(20, 80, 171, 281))
        self.listWidget.setObjectName(_fromUtf8("listWidget"))
        self.listWidget_2 = QtGui.QListWidget(Dialog)
        self.listWidget_2.setGeometry(QtCore.QRect(290, 80, 171, 281))
        self.listWidget_2.setObjectName(_fromUtf8("listWidget_2"))
        self.commandLinkButton = QtGui.QCommandLinkButton(Dialog)
        self.commandLinkButton.setGeometry(QtCore.QRect(220, 140, 31, 41))
        self.commandLinkButton.setText(_fromUtf8(""))
        self.commandLinkButton.setObjectName(_fromUtf8("commandLinkButton"))
        self.pushButton_ok = QtGui.QPushButton(Dialog)
        self.pushButton_ok.setGeometry(QtCore.QRect(310, 30, 85, 27))
        self.pushButton_ok.setMaximumSize(QtCore.QSize(85, 27))
        self.pushButton_ok.setObjectName(_fromUtf8("pushButton_ok"))

        self.retranslateUi(Dialog)
        QtCore.QMetaObject.connectSlotsByName(Dialog)

    def retranslateUi(self, Dialog):
        Dialog.setWindowTitle(QtGui.QApplication.translate("Dialog", "打开文件实例_Dialog", None, QtGui.QApplication.UnicodeUTF8))
        self.label.setText(QtGui.QApplication.translate("Dialog", "文件位置", None, QtGui.QApplication.UnicodeUTF8))
        self.checkBox_cfg.setText(QtGui.QApplication.translate("Dialog", "查找", None, QtGui.QApplication.UnicodeUTF8))
        self.pushButton_ok.setText(QtGui.QApplication.translate("Dialog", "确认", None, QtGui.QApplication.UnicodeUTF8))

# # -*- coding: utf-8 -*-
# 
# # Form implementation generated from reading ui file 'openapk.ui'
# #
# # Created: Sun Aug 18 12:55:32 2013
# #      by: PyQt4 UI code generator 4.8.4
# #
# # WARNING! All changes made in this file will be lost!
# 
# from PyQt4 import QtCore, QtGui
# 
# try:
#     _fromUtf8 = QtCore.QString.fromUtf8
# except AttributeError:
#     _fromUtf8 = lambda s: s
# 
# class Ui_Open_Dialog(object):
#     def setupUi(self, Dialog):
#         Dialog.setObjectName(_fromUtf8("Dialog"))
#         Dialog.resize(491, 391)
#         self.label = QtGui.QLabel(Dialog)
#         self.label.setGeometry(QtCore.QRect(80, 30, 132, 23))
#         self.label.setObjectName(_fromUtf8("label"))
#         self.checkBox_cfg = QtGui.QCheckBox(Dialog)
#         self.checkBox_cfg.setGeometry(QtCore.QRect(220, 30, 131, 23))
#         self.checkBox_cfg.setChecked(True)
#         self.checkBox_cfg.setObjectName(_fromUtf8("checkBox_cfg"))
#         self.listWidget = QtGui.QListWidget(Dialog)
#         self.listWidget.setGeometry(QtCore.QRect(20, 80, 171, 281))
#         self.listWidget.setObjectName(_fromUtf8("listWidget"))
#         self.listWidget_2 = QtGui.QListWidget(Dialog)
#         self.listWidget_2.setGeometry(QtCore.QRect(290, 80, 171, 281))
#         self.listWidget_2.setObjectName(_fromUtf8("listWidget_2"))
#         self.commandLinkButton = QtGui.QCommandLinkButton(Dialog)
#         self.commandLinkButton.setGeometry(QtCore.QRect(220, 140, 31, 41))
#         self.commandLinkButton.setText(_fromUtf8(""))
#         self.commandLinkButton.setObjectName(_fromUtf8("commandLinkButton"))
# 
#         self.retranslateUi(Dialog)
#         QtCore.QMetaObject.connectSlotsByName(Dialog)
# 
#     def retranslateUi(self, Dialog):
#         Dialog.setWindowTitle(QtGui.QApplication.translate("Dialog", "打开文件实例_Dialog", None, QtGui.QApplication.UnicodeUTF8))
#         self.label.setText(QtGui.QApplication.translate("Dialog", "文件位置", None, QtGui.QApplication.UnicodeUTF8))
#         self.checkBox_cfg.setText(QtGui.QApplication.translate("Dialog", "查找", None, QtGui.QApplication.UnicodeUTF8))

if __name__ == "__main__":
    import sys
    app = QtGui.QApplication(sys.argv)
    Open_Dialog = QtGui.QDialog()
    ui = Ui_Open_Dialog()
    ui.setupUi(Open_Dialog)
    Open_Dialog.show()
    sys.exit(app.exec_())