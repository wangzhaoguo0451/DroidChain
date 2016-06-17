# -*- coding: utf-8 -*-

"""
Module implementing openMM.
"""

#from PyQt4.QtGui import QDialog
#from PyQt4.QtCore import pyqtSignature
from PyQt4.QtGui import *
from PyQt4.QtCore import *
from PyQt4 import QtCore, QtGui
try:
    _fromUtf8 = QtCore.QString.fromUtf8
except AttributeError:
    _fromUtf8 = lambda s: s

from Formlist import Ui_Form

class Form(self,Ui_Form):
	def __init__(self, parent = None):
		Form.__init__(self, parent)
		QListWidget.__init__(self)
		self.setupUi(self)
		#self.setSelectionMode(QtGui.QAbstractItemView.ExtendedSelection)
# 		self.itemClicked.connect(self.item_click)
		#QtCore.QObject.connect(self.pushButton_ok, QtCore.SIGNAL(_fromUtf8("clicked(bool)")), pushbutton_ok_clicked)
	def item_click(self, item):
		print item, str(item.text()) 
	@pyqtSignature("bool")
	def on_pushButton_ok_clicked(self,checked):
		#print "OK"
		descriptor = str(self.lineEdit_class.text())
		print descriptor
	@pyqtSignature("bool")
	def on_commandLinkButton_clicked(self,checked):
		
		print "halouhalouhalouou"