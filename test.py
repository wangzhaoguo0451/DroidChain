from PyQt4.QtCore import QCoreApplication, Qt
from PyQt4.QtGui import QListWidget, QListWidgetItem, QApplication#
from PyQt4 import QtCore,QtGui

import sys
try:
    _fromUtf8 = QtCore.QString.fromUtf8
except AttributeError:
    _fromUtf8 = lambda s: s
class MyList(QListWidget):
    def __init__(self):
        QListWidget.__init__(self)
        self.add_item()
        self.setSelectionMode(QtGui.QAbstractItemView.ExtendedSelection)
        #self.setSelectionMode(QtGui.QAbstractItemView.Selection) 
        #self.setSelectionMode(QtGui.QAbstractItemView.ContiguousSelection)
       # self.itemClicked.connect(self.item_click)
        #self.itemClicked.connect(self.remove)
    
    def add_item(self):
         content='item1'+"\n"+'item2'+"\n"+'item3'
         print content
         con=content.split("\n")
         for c in con:
         	print "C->"+c
         	item = QListWidgetItem(c)
         	self.addItem(item)
        #for item_text in ['item1', 'item2', 'item3']:
           # item = QListWidgetItem(item_text)
           # self.addItem(item)

    def item_click(self, item):
        print item, str(item.text()) 
        
        for item in self.selectedItems():
        	self.takeItem(self.row(item)) #delete
        	
        listWidget = QListWidget()
             
#         self.removeItemWidget(item)
          #mode=QListWidget.model()
#         listWidget = self.ContentList
#         model = listWidget.model()
#         for selectedItem in listWidget.selectedItems():
#           qIndex = listWidget.indexFromItem(selectedItem)
#           print 'removing : %s' %model.data(qIndex).toString()
#           model.removeRow(qIndex)#.())l
        

if __name__ == '__main__':
    app = QApplication([])
    myList = MyList()
    myList.show()
    sys.exit(app.exec_())



# #!/usr/bin/python
# # -*- coding: utf-8 -*-
# 
# """
# ZetCode PyQt4 tutorial 
# 
# This example shows a QtGui.QCalendarWidget widget.
# 
# author: Jan Bodnar
# website: zetcode.com 
# last edited: September 2011
# """
# 
# import sys
# from PyQt4 import QtGui, QtCore
# 
# class Example(QtGui.QWidget):
#     
#     def __init__(self):
#         super(Example, self).__init__()
#         
#         self.initUI()
#         
#     def initUI(self):      
# 
#         cal = QtGui.QCalendarWidget(self)
#         cal.setGridVisible(True)
#         cal.move(20, 20)
#         cal.clicked[QtCore.QDate].connect(self.showDate)
#         
#         self.lbl = QtGui.QLabel(self)
#         date = cal.selectedDate()
#         self.lbl.setText(date.toString())
#         self.lbl.move(130, 260)
#         
#         self.setGeometry(300, 300, 350, 300)
#         self.setWindowTitle('Calendar')
#         self.show()
#         
#     def showDate(self, date):     
#         self.lbl.setText(date.toString())
#         
# def main():
#     
#     app = QtGui.QApplication(sys.argv)
#     ex = Example()
#     sys.exit(app.exec_())
# 
# 
# if __name__ == '__main__':
#     main()
# #!/usr/bin/python
# # -*- coding: utf-8 -*-
# 
# """
# ZetCode PyQt4 tutorial 
# 
# This example shows a QtGui.QProgressBar widget.
# 
# author: Jan Bodnar
# website: zetcode.com 
# last edited: September 2011
# """
# 
# import sys
# from PyQt4 import QtGui, QtCore
# 
# class Example(QtGui.QWidget):
#     
#     def __init__(self):
#         super(Example, self).__init__()
#         
#         self.initUI()
#         
#     def initUI(self):      
# 
#         self.pbar = QtGui.QProgressBar(self)
#         self.pbar.setGeometry(30, 40, 200, 25)
# 
#         self.btn = QtGui.QPushButton('Start', self)
#         self.btn.move(40, 80)
#         self.btn.clicked.connect(self.doAction)
# 
#         self.timer = QtCore.QBasicTimer()
#         self.step = 0
#         
#         self.setGeometry(300, 300, 280, 170)
#         self.setWindowTitle('QtGui.QProgressBar')
#         self.show()
#         
#     def timerEvent(self, e):
#       
#         if self.step >= 100:
#             self.timer.stop()
#             self.btn.setText('Finished')
#             return
#             
#         self.step = self.step + 1
#         self.pbar.setValue(self.step)
# 
#     def doAction(self):
#       
#         if self.timer.isActive():
#             self.timer.stop()
#             self.btn.setText('Start')
#         else:
#             self.timer.start(100, self)
#             self.btn.setText('Stop')
#         
# def main():
#     
#     app = QtGui.QApplication(sys.argv)
#     ex = Example()
#     sys.exit(app.exec_())
# 
# 
# if __name__ == '__main__':
#     main()  


# #!/usr/bin/python
# # -*- coding: utf-8 -*-
# 
# """
# ZetCode PyQt4 tutorial 
# 
# This example shows a QtGui.QSlider widget.
# 
# author: Jan Bodnar
# website: zetcode.com 
# last edited: September 2011
# """
# 
# import sys
# from PyQt4 import QtGui, QtCore
# 
# class Example(QtGui.QWidget):
#     
#     def __init__(self):
#         super(Example, self).__init__()
#         
#         self.initUI()
#         
#     def initUI(self):      
# 
#         sld = QtGui.QSlider(QtCore.Qt.Horizontal, self)
#         sld.setFocusPolicy(QtCore.Qt.NoFocus)
#         sld.setGeometry(30, 40, 100, 30)
#         sld.valueChanged[int].connect(self.changeValue)
#         
#         self.label = QtGui.QLabel(self)
#         self.label.setPixmap(QtGui.QPixmap('mute.png'))
#         self.label.setGeometry(160, 40, 80, 30)
#         
#         self.setGeometry(300, 300, 280, 170)
#         self.setWindowTitle('QtGui.QSlider')
#         self.show()
#         
#     def changeValue(self, value):
# 
#         if value == 0:
#             self.label.setPixmap(QtGui.QPixmap('mute.png'))
#         elif value > 0 and value <= 30:
#             self.label.setPixmap(QtGui.QPixmap('min.png'))
#         elif value > 30 and value < 80:
#             self.label.setPixmap(QtGui.QPixmap('med.png'))
#         else:
#             self.label.setPixmap(QtGui.QPixmap('max.png'))
#         
# def main():
#     
#     app = QtGui.QApplication(sys.argv)
#     ex = Example()
#     sys.exit(app.exec_())
# 
# 
# if __name__ == '__main__':
#     main()


# #!/usr/bin/python
# # -*- coding: utf-8 -*-
# 
# """
# ZetCode PyQt4 tutorial 
# 
# In this example, we create three toggle buttons.
# They will control the background color of a 
# QtGui.QFrame. 
# 
# author: Jan Bodnar
# website: zetcode.com 
# last edited: September 2011
# """
# 
# import sys
# from PyQt4 import QtGui
# 
# class Example(QtGui.QWidget):
#     
#     def __init__(self):
#         super(Example, self).__init__()
#         
#         self.initUI()
#         
#     def initUI(self):      
# 
#         self.col = QtGui.QColor(0, 0, 0)       
# 
#         redb = QtGui.QPushButton('Red', self)
#         redb.setCheckable(True)
#         redb.move(10, 10)
# 
#         redb.clicked[bool].connect(self.setColor)
# 
#         redb = QtGui.QPushButton('Green', self)
#         redb.setCheckable(True)
#         redb.move(10, 60)
# 
#         redb.clicked[bool].connect(self.setColor)
# 
#         blueb = QtGui.QPushButton('Blue', self)
#         blueb.setCheckable(True)
#         blueb.move(10, 110)
# 
#         blueb.clicked[bool].connect(self.setColor)
# 
#         self.square = QtGui.QFrame(self)
#         self.square.setGeometry(150, 20, 100, 100)
#         self.square.setStyleSheet("QWidget { background-color: %s }" %  
#             self.col.name())
#         
#         self.setGeometry(300, 300, 280, 170)
#         self.setWindowTitle('Toggle button')
#         self.show()
#         
#     def setColor(self, pressed):
#         
#         source = self.sender()
#         
#         if pressed:
#             val = 255
#         else: val = 0
#                         
#         if source.text() == "Red":
#             self.col.setRed(val)                
#         elif source.text() == "Green":
#             self.col.setGreen(val)             
#         else:
#             self.col.setBlue(val) 
#             
#         self.square.setStyleSheet("QFrame { background-color: %s }" %
#             self.col.name())  
#         
# def main():
#     
#     app = QtGui.QApplication(sys.argv)
#     ex = Example()
#     sys.exit(app.exec_())
# 
# 
# if __name__ == '__main__':
#     main()



# #!/usr/bin/python
# # -*- coding: utf-8 -*-
# 
# """
# ZetCode PyQt4 tutorial 
# 
# In this example, a QtGui.QCheckBox widget
# is used to toggle the title of a window.
# 
# author: Jan Bodnar
# website: zetcode.com 
# last edited: September 2011
# """
# 
# import sys
# from PyQt4 import QtGui, QtCore
# 
# class Example(QtGui.QWidget):
#     
#     def __init__(self):
#         super(Example, self).__init__()
#         
#         self.initUI()
#         
#     def initUI(self):      
# 
#         cb = QtGui.QCheckBox('Show title', self)
#         cb.move(20, 20)
#         cb.toggle()
#         cb.stateChanged.connect(self.changeTitle)
#         
#         self.setGeometry(300, 300, 250, 150)
#         self.setWindowTitle('QtGui.QCheckBox')
#         self.show()
#         
#     def changeTitle(self, state):
#       
#         if state == QtCore.Qt.Checked:
#             self.setWindowTitle('QtGui.QCheckBox')
#         else:
#             self.setWindowTitle('')
#         
# def main():
#     
#     app = QtGui.QApplication(sys.argv)
#     ex = Example()
#     sys.exit(app.exec_())
# 
# 
# if __name__ == '__main__':
#     main()
    
# from PyQt4.QtCore import *
# from PyQt4.QtGui import *
# import ui_list
# 
# class Test(QDialog,ui_list.Ui_Dialog):
# 	def __init__(self, parent=None):
# 		super(Test, self).__init__(parent)
# 		self.setupUi(self)
#         for i in range(10):
#            item = QListWidgetItem("Item %i" % i)
#            self.listWidget.addItem(item)
#   #self.listWidget.itemClicked.connect(self.printItemText)
#            self.connect(self.listWidget, SIGNAL("itemSelectionChanged()"),
#            self.printItemText)
#   
# def printItemText(self):
#   items = self.listWidget.selectedItems()
#   x=[]
#   for i in range(len(items)):
#     x.append(str(self.listWidget.selectedItems()[i].text()))
#     print x  
# if __name__ == "__main__":
# 	import sys
# app = QApplication(sys.argv)
# form = Test()
# form.show()
# app.exec_()
'''




# import sys
# from PyQt4 import QtGui, QtCore
# 
# class MainForm(QtGui.QMainWindow):
#     def __init__(self, parent=None):
#         super(MainForm, self).__init__(parent)
# 
#         listWidget = QtGui.QListWidget()
# 
#         item = QtGui.QListWidgetItem()
#         item.setFlags(item.flags() | QtCore.Qt.ItemIsUserCheckable)
#         item.setCheckState(QtCore.Qt.Unchecked)
#         listWidget.addItem(item)
# 
#         widget = QtGui.QCheckBox('test')
#         #widget.setChecked(True) 
#         	#	self.checkBox_cfg = QtGui.QCheckBox(self.layoutWidget1)
# 		#self.widget.setChecked(True)
#         item.setSizeHint(widget.sizeHint())
#         listWidget.setItemWidget(item, widget)
# 
#         listWidget.itemClicked.connect(self.on_listWidget_itemClicked)
# 
#         self.setCentralWidget(listWidget)
# 
#     def on_listWidget_itemClicked(self, item):
#         if item.listWidget().itemWidget(item) != None:
#         	 
#             if item.checkState() == QtCore.Qt.Checked:
#                 item.setCheckState(QtCore.Qt.Unchecked)
#                 
#                 print "hello"
#             else:
#                 item.setCheckState(QtCore.Qt.Checked)
#                 print "nihao"
#              
# 
# def main():
#     app = QtGui.QApplication(sys.argv)
#     form = MainForm()
#     form.show()
#     app.exec_()
# 
# if __name__ == '__main__':
#     main()'''

# import sys
# from PyQt4 import QtGui, QtCore
# 
# class MainForm(QtGui.QMainWindow):
#     def __init__(self, parent=None):
#         super(MainForm, self).__init__(parent)
# 
#         listWidget = QtGui.QListWidget()
# 
#         item = QtGui.QListWidgetItem()
#         item.setFlags(item.flags() | QtCore.Qt.ItemIsUserCheckable)
#         item.setCheckState(QtCore.Qt.Unchecked)
#         listWidget.addItem(item)
# 
#         widget = QtGui.QCheckBox('test')
#         #widget.setChecked(True) 
#         	#	self.checkBox_cfg = QtGui.QCheckBox(self.layoutWidget1)
# 		#self.widget.setChecked(True)
#         item.setSizeHint(widget.sizeHint())
#         listWidget.setItemWidget(item, widget)
# 
#         listWidget.itemClicked.connect(self.on_listWidget_itemClicked)
# 
#         self.setCentralWidget(listWidget)
# 
#     def on_listWidget_itemClicked(self, item):
#         if item.listWidget().itemWidget(item) != None:
#         	 
#             if item.checkState() == QtCore.Qt.Checked:
#                 item.setCheckState(QtCore.Qt.Unchecked)
#                 
#                 print "hello"
#             else:
#                 item.setCheckState(QtCore.Qt.Checked)
#                 print "nihao"
#              
# 
# def main():
#     app = QtGui.QApplication(sys.argv)
#     form = MainForm()
#     form.show()
#     app.exec_()
# 
# if __name__ == '__main__':
#     main()