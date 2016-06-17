# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'Mopen.ui'
#
# Created: Sun Aug 18 13:53:15 2013
#      by: PyQt4 UI code generator 4.8.4
#
# WARNING! All changes made in this file will be lost!

from PyQt4.QtCore import QCoreApplication, Qt
from PyQt4.QtGui import QListWidget, QListWidgetItem, QApplication#
from PyQt4 import QtCore,QtGui
try:
     _fromUtf8 = QtCore.QString.fromUtf8
except AttributeError:
     _fromUtf8 = lambda s: s
class Mopen_Dialog(object):
    def setupUi(self, Dialog):
        Dialog.setObjectName(_fromUtf8("Form"))
        Dialog.resize(613, 408)
        self.pushButton_ok = QtGui.QPushButton(Dialog)
        self.pushButton_ok.setGeometry(QtCore.QRect(260, 60, 85, 27))
        self.pushButton_ok.setMaximumSize(QtCore.QSize(85, 27))
        self.pushButton_ok.setObjectName(_fromUtf8("pushButton_ok"))
        self.listWidget = QtGui.QListWidget(Dialog)
        self.listWidget.setGeometry(QtCore.QRect(70, 100, 481, 251))
        self.listWidget.setObjectName(_fromUtf8("listWidget"))
        self.pushButton_cancel = QtGui.QPushButton(Dialog)
        self.pushButton_cancel.setGeometry(QtCore.QRect(260, 360, 85, 27))
        self.pushButton_cancel.setMaximumSize(QtCore.QSize(85, 27))
        self.pushButton_cancel.setObjectName(_fromUtf8("pushButton_cancel"))
        self.layoutWidget = QtGui.QWidget(Dialog)
        self.layoutWidget.setGeometry(QtCore.QRect(20, 20, 551, 29))
        self.layoutWidget.setObjectName(_fromUtf8("layoutWidget"))
        self.horizontalLayout = QtGui.QHBoxLayout(self.layoutWidget)
        self.horizontalLayout.setMargin(0)
        self.horizontalLayout.setObjectName(_fromUtf8("horizontalLayout"))
        self.label_2 = QtGui.QLabel(self.layoutWidget)
        self.label_2.setObjectName(_fromUtf8("label_2"))
        self.horizontalLayout.addWidget(self.label_2)
        self.lineEdit_class = QtGui.QLineEdit(self.layoutWidget)
        self.lineEdit_class.setText(_fromUtf8(""))
        self.lineEdit_class.setObjectName(_fromUtf8("lineEdit_class"))
        self.horizontalLayout.addWidget(self.lineEdit_class)
        self.toolButton_ok = QtGui.QToolButton(Dialog)
        self.toolButton_ok.setGeometry(QtCore.QRect(580, 20, 31, 31))
        self.toolButton_ok.setObjectName(_fromUtf8("toolButton_ok"))

        self.retranslateUi(Dialog)
         #QtCore.QObject.connect(self.pushButton_ok, QtCore.SIGNAL(_fromUtf8("clicked(bool)")), Dialog.close)
        QtCore.QObject.connect(self.pushButton_cancel, QtCore.SIGNAL(_fromUtf8("clicked(bool)")), Dialog.close)
        QtCore.QMetaObject.connectSlotsByName(Dialog)

#     def retranslateUi(self, Form):
#         Form.setWindowTitle(QtGui.QApplication.translate("Form", "Formlist", None, QtGui.QApplication.UnicodeUTF8))
#         self.pushButton_ok.setText(QtGui.QApplication.translate("Form", "确认", None, QtGui.QApplication.UnicodeUTF8))
#         self.pushButton_cancel.setText(QtGui.QApplication.translate("Form", "关闭对话框", None, QtGui.QApplication.UnicodeUTF8))
#         self.label_2.setText(QtGui.QApplication.translate("Form", "文件位置", None, QtGui.QApplication.UnicodeUTF8))
#         self.lineEdit_class.setText(QtGui.QApplication.translate("Form", "/home/wang/Desktop/instanse", None, QtGui.QApplication.UnicodeUTF8))
        


    def retranslateUi(self, Dialog):
     	 #self.setSelectionMode(QtGui.QAbstractItemView.ExtendedSelection)
#      	 content='item1'+"\n"+'item2'+"\n"+'item3'+"\n"+'item1'+"\n"+'item2'+"\n"+'item3'+"\n"+'item1'+"\n"+'item2'+"\n"+'item3'+"\n"+'item1'+"\n"+'item2'+"\n"+'item3'+"\n"+'item1'+"\n"+'item2'+"\n"+'item3'+"\n"+'item1'+"\n"+'item2'+"\n"+'item3'+"\n"+'item1'+"\n"+'item2'+"\n"+'item3'+"\n"+'item1'+"\n"+'item2'+"\n"+'item3'+"\n"+'item1'+"\n"+'item2'+"\n"+'item3'+"\n"+'item1'+"\n"+'item2'+"\n"+'item3'
#          print content
#          con=content.split("\n")
#          for c in con:
#             listItem = QListWidgetItem(c, self.listWidget)
        # self.itemClicked.connect(self.item_click)
         Dialog.setWindowTitle(QtGui.QApplication.translate("Dialog", "Formlist", None, QtGui.QApplication.UnicodeUTF8))
         self.pushButton_ok.setText(QtGui.QApplication.translate("Dialog", "确认", None, QtGui.QApplication.UnicodeUTF8))
         self.pushButton_cancel.setText(QtGui.QApplication.translate("Dialog", "关闭对话框", None, QtGui.QApplication.UnicodeUTF8))
         self.label_2.setText(QtGui.QApplication.translate("Dialog", "文件位置", None, QtGui.QApplication.UnicodeUTF8))
         self.toolButton_ok.setText(QtGui.QApplication.translate("Dialog", "...", None, QtGui.QApplication.UnicodeUTF8)) 
#          Dialog.setWindowTitle(QtGui.QApplication.translate("Dialog", "打开文件实例", None, QtGui.QApplication.UnicodeUTF8))
#          self.label_2.setText(QtGui.QApplication.translate("Dialog", "文件位置", None, QtGui.QApplication.UnicodeUTF8))
         self.lineEdit_class.setText(QtGui.QApplication.translate("Dialog", "/home/wang/Desktop/instanse/*.apk", None, QtGui.QApplication.UnicodeUTF8))
#          self.pushButton_ok.setText(QtGui.QApplication.translate("Dialog", "确认", None, QtGui.QApplication.UnicodeUTF8))
#          self.pushButton_cancel.setText(QtGui.QApplication.translate("Dialog", "关闭对话框", None, QtGui.QApplication.UnicodeUTF8))
         #self.listWidget.item(0).setText(QtGui.QApplication.translate("Dialog", "aa", None, QtGui.QApplication.UnicodeUTF8))
         #self.listWidget.item(1).setText(QtGui.QApplication.translate("Dialog", "aa", None, QtGui.QApplication.UnicodeUTF8))
         #self.listWidget.item(2).setText(QtGui.QApplication.translate("Dialog", "aaaa", None, QtGui.QApplication.UnicodeUTF8))
    def add_item(self):
         content='item1'+"\n"+'item2'+"\n"+'item3'
         print content
         con=content.split("\n")
         for c in con:
            listItem = QListWidgetItem(c, self.listWidget)
            #print "okkk"+listItem 
            #listItem = QListWidgetItem(c, self.listWidget_2)  
            #listItem.setFlags(Qt.ItemIsEditable | Qt.ItemIsSelectable | Qt.ItemIsEnabled)
#          for c in con:
#          	print "C->"+c
#          	item = self.listWidget(c)
#          	self.addItem(item)
    def item_click(self, item):
        print item, str(item.text()) 
        
        for item in self.selectedItems():
        	self.takeItem(self.row(item)) #delete
        	
        #listWidget = QListWidget()
if __name__ == "__main__":
    import sys
    app = QtGui.QApplication(sys.argv)
    Autoopen = QtGui.QDialog()
    ui = Mopen_Dialog()
    ui.setupUi(Autoopen)
    Autoopen.show()
    sys.exit(app.exec_())
    # class Mopen_Dialog(object):
#      def setupUi(self, Dialog):
#          Dialog.setObjectName(_fromUtf8("Dialog"))
#          Dialog.resize(681, 395)
#          self.layoutWidget = QtGui.QWidget(Dialog)
#          self.layoutWidget.setGeometry(QtCore.QRect(0, 10, 551, 29))
#          self.layoutWidget.setObjectName(_fromUtf8("layoutWidget"))
#          self.horizontalLayout = QtGui.QHBoxLayout(self.layoutWidget)
#          self.horizontalLayout.setMargin(0)
#          self.horizontalLayout.setObjectName(_fromUtf8("horizontalLayout"))
#          self.label_2 = QtGui.QLabel(self.layoutWidget)
#          self.label_2.setObjectName(_fromUtf8("label_2"))
#          self.horizontalLayout.addWidget(self.label_2)
#          self.lineEdit_class = QtGui.QLineEdit(self.layoutWidget)
#          self.lineEdit_class.setObjectName(_fromUtf8("lineEdit_class"))
#          self.horizontalLayout.addWidget(self.lineEdit_class)
#          self.pushButton_ok = QtGui.QPushButton(Dialog)
#          self.pushButton_ok.setGeometry(QtCore.QRect(570, 10, 85, 27))
#          self.pushButton_ok.setMaximumSize(QtCore.QSize(85, 27))
#          self.pushButton_ok.setObjectName(_fromUtf8("pushButton_ok"))
#          self.listWidget = QtGui.QListWidget(Dialog)
#          self.listWidget.setGeometry(QtCore.QRect(10, 50, 241, 281))
#          self.listWidget.setObjectName(_fromUtf8("listWidget"))
#          self.listWidget_2 = QtGui.QListWidget(Dialog)
#          self.listWidget_2.setGeometry(QtCore.QRect(440, 50, 221, 281))
#          self.listWidget_2.setObjectName(_fromUtf8("listWidget_2"))
#          self.commandLinkButton = QtGui.QCommandLinkButton(Dialog)
#          self.commandLinkButton.setGeometry(QtCore.QRect(310, 140, 31, 41))
#          self.commandLinkButton.setText(_fromUtf8(""))
#          self.commandLinkButton.setObjectName(_fromUtf8("commandLinkButton"))
#          self.pushButton_cancel = QtGui.QPushButton(Dialog)
#          self.pushButton_cancel.setGeometry(QtCore.QRect(300, 340, 85, 27))
#          self.pushButton_cancel.setMaximumSize(QtCore.QSize(85, 27))
#          self.pushButton_cancel.setObjectName(_fromUtf8("pushButton_cancel"))
#          
#         # self.setSelectionMode(QtGui.QAbstractItemView.ExtendedSelection)
#  
#          self.retranslateUi(Dialog)
#          #QtCore.QObject.connect(self.pushButton_ok, QtCore.SIGNAL(_fromUtf8("clicked(bool)")), Dialog.close)
#          QtCore.QObject.connect(self.pushButton_cancel, QtCore.SIGNAL(_fromUtf8("clicked(bool)")), Dialog.close)
#          QtCore.QMetaObject.connectSlotsByName(Dialog)
 