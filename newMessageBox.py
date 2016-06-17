from PyQt4.QtGui import *
from PyQt4.QtCore import *
from PyQt4 import QtCore, QtGui

class newMessageBox(QMessageBox):  # @UndefinedVariable

    
    def __init__(self, parent = None):
        QMessageBox.__init__(self, parent)  # @UndefinedVariable
        
    def resizeEvent(self, resizeEvent):
        self.setFixedSize(500, 150)


