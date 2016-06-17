# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'Formlist.ui'
#
# Created: Mon Aug 19 01:45:21 2013
#      by: PyQt4 UI code generator 4.8.4
#
# WARNING! All changes made in this file will be lost!

from PyQt4 import QtCore, QtGui
from PyQt4.QtCore import QCoreApplication, Qt
from PyQt4.QtGui import QListWidget, QListWidgetItem, QApplication#
# from PyQt4 import QtCore,QtGui

try:
    _fromUtf8 = QtCore.QString.fromUtf8
except AttributeError:
    _fromUtf8 = lambda s: s

class Ui_Form(object):
    def setupUi(self, Form):
        Form.setObjectName(_fromUtf8("Form"))
        Form.resize(613, 389)
        #QListWidget.__init__(self)
        #self.add_item()
        self.pushButton_ok = QtGui.QPushButton(Form)
        self.pushButton_ok.setGeometry(QtCore.QRect(260, 50, 85, 27))
        self.pushButton_ok.setMaximumSize(QtCore.QSize(85, 27))
        self.pushButton_ok.setObjectName(_fromUtf8("pushButton_ok"))
        self.listWidget = QtGui.QListWidget(Form)
        self.listWidget.setGeometry(QtCore.QRect(20, 80, 241, 281))
        self.listWidget.setObjectName(_fromUtf8("listWidget"))
        self.listWidget_2 = QtGui.QListWidget(Form)
        self.listWidget_2.setGeometry(QtCore.QRect(350, 80, 241, 281))
        self.listWidget_2.setObjectName(_fromUtf8("listWidget_2"))
        self.commandLinkButton = QtGui.QCommandLinkButton(Form)
        self.commandLinkButton.setGeometry(QtCore.QRect(290, 200, 31, 41))
        self.commandLinkButton.setText(_fromUtf8(""))
        self.commandLinkButton.setObjectName(_fromUtf8("commandLinkButton"))
        self.pushButton_cancel = QtGui.QPushButton(Form)
        self.pushButton_cancel.setGeometry(QtCore.QRect(260, 360, 85, 27))
        self.pushButton_cancel.setMaximumSize(QtCore.QSize(85, 27))
        self.pushButton_cancel.setObjectName(_fromUtf8("pushButton_cancel"))
        self.layoutWidget = QtGui.QWidget(Form)
        self.layoutWidget.setGeometry(QtCore.QRect(30, 20, 551, 29))
        self.layoutWidget.setObjectName(_fromUtf8("layoutWidget"))
        self.horizontalLayout = QtGui.QHBoxLayout(self.layoutWidget)
        self.horizontalLayout.setMargin(0)
        self.horizontalLayout.setObjectName(_fromUtf8("horizontalLayout"))
        self.label_2 = QtGui.QLabel(self.layoutWidget)
        self.label_2.setObjectName(_fromUtf8("label_2"))
        self.horizontalLayout.addWidget(self.label_2)
        self.lineEdit_class = QtGui.QLineEdit(self.layoutWidget)
        self.lineEdit_class.setObjectName(_fromUtf8("lineEdit_class"))
        self.horizontalLayout.addWidget(self.lineEdit_class)

        self.retranslateUi(Form)
#         self.item_click(self)
        #self.itemClicked.connect(self.item_click)
#         connect(sectorList, SIGNAL(itemClicked(QListWidgetItem *)), this, SLOT(test(QListWidgetItem *)));
         #======================================================================
         # connect(ui->listWidget, SIGNAL(itemClicked(QListWidgetItem *)), this, SLOT(itemClickedSlot(QListWidgetItem *)));
         # void Form::itemClickedSlot (QListWidgetItem * itemClicked)
         # {
         #   //Do something with clicked item
         #  }
         #======================================================================
        QtCore.QObject.connect(self.pushButton_cancel, QtCore.SIGNAL(_fromUtf8("clicked(bool)")), Form.close)
        QtCore.QMetaObject.connectSlotsByName(Form)
        
    def retranslateUi(self, Form):
    	self.item_click(Form)
#     	content='item1'+"\n"+'item2'+"\n"+'item3'
#         print content
#         con=content.split("\n")
#         for c in con:
#          	print "C->"+c
#          	item = QListWidgetItem(c)
         	#self.addItem(item)
        content='item1'+"\n"+'item2'+"\n"+'item3'+"\n"+'item4'+"\n"+'item5'+"\n"+'item6'+"\n"+'item7'+"\n"+'item8'+"\n"+'item9'+"\n"+'item10'+"\n"+'item11'+"\n"+'item12'+"\n"+'item13'+"\n"+'item14'+"\n"+'item15'+"\n"+'item16'+"\n"+'item17'+"\n"+'item18'+"\n"+'item19'+"\n"+'item20'+"\n"+'item21'+"\n"+'item22'+"\n"+'item23'+"\n"+'item24'+"\n"+'item25'+"\n"+'item26'+"\n"+'item27'+"\n"+'item28'+"\n"+'item29'+"\n"+'item30'
        print content
        con=content.split("\n")
        for c in con:
            listItem = QListWidgetItem(c, self.listWidget)
        Form.setWindowTitle(QtGui.QApplication.translate("Form", "Formlist", None, QtGui.QApplication.UnicodeUTF8))
        self.pushButton_ok.setText(QtGui.QApplication.translate("Form", "确认", None, QtGui.QApplication.UnicodeUTF8))
        self.pushButton_cancel.setText(QtGui.QApplication.translate("Form", "关闭对话框", None, QtGui.QApplication.UnicodeUTF8))
        self.label_2.setText(QtGui.QApplication.translate("Form", "文件位置", None, QtGui.QApplication.UnicodeUTF8))
        self.lineEdit_class.setText(QtGui.QApplication.translate("Form", "/home/wang/Desktop/instanse", None, QtGui.QApplication.UnicodeUTF8))
    
    def item_click(self,item):
     	print "okkk"
#         print item, str(item.text())
         
if __name__ == "__main__":
    import sys
    app = QtGui.QApplication(sys.argv)
    Autoopen = QtGui.QListWidget()
    ui = Ui_Form()
    ui.setupUi(Autoopen)
    Autoopen.show()
    sys.exit(app.exec_())