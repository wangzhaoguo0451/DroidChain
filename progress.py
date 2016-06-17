#  # -*- coding: utf-8 -*-
# import sys, time
# from PyQt4 import QtCore, QtGui
#  
# def progress(data, *args):
#      it=iter(data)
#      widget = QtGui.QProgressDialog(*args+(0,it.__length_hint__()))
#      c=0
#      for v in it:
#          QtCore.QCoreApplication.instance().processEvents()
#          if widget.wasCanceled():
#              raise StopIteration
#          c+=1
#          widget.setValue(c)
#          yield(v)
#  
# if __name__ == "__main__":
#      app = QtGui.QApplication(sys.argv)
#  
#      # Do something slow
#      for x in progress(xrange(2),"Show Progress", "Stop the madness!"):
#          print "OK"
#          time.sleep(.999)
#===============================================================================
# import time
# from PyQt4 import QtCore, QtGui
# 
# class SleepProgress(QtCore.QThread):
# 	procDone = QtCore.pyqtSignal(bool)
# 	partDone = QtCore.pyqtSignal(int)
#  
# def run(self):
#   print 'proc started'
#   for a in range(1, 1+35):
#   	self.partDone.emit(float(a)/35.0*100)
#   print 'sleep', a
#   time.sleep(0.13)
# 
#   self.procDone.emit(True)   
#   print 'proc ended'
# 
# class Progress(QtGui.QWidget):
#  def __init__(self, parent=None):
#   super(Progress, self).__init__(parent)
# 
#   self.thread = SleepProgress()
# 
#   self.nameLabel = QtGui.QLabel("0.0%")
#   self.nameLine = QtGui.QLineEdit()
# 
#   self.progressbar = QtGui.QProgressBar()
#   self.progressbar.setMinimum(1)
#   self.progressbar.setMaximum(100)
# 
#   mainLayout = QtGui.QGridLayout()
#   mainLayout.addWidget(self.progressbar, 100, 100)
#   mainLayout.addWidget(self.nameLabel, 0, 1)
# 
#   self.setLayout(mainLayout)
#   self.setWindowTitle("Processing")
# 
#   self.thread.partDone.connect(self.updatePBar)
#   self.thread.procDone.connect(self.fin)
# 
#   self.thread.start()
#   
#  def updatePBar(self, val):
#    self.progressbar.setValue(val)   
#    perct = "{0}%".format(val)
#    self.nameLabel.setText(perct)
# 
#  def fin(self):
#    sys.exit()
#  ##self.hide()
# 
# if __name__ == '__main__':
# 
#  import sys
#  app = QtGui.QApplication(sys.argv)
#  pbarwin = Progress()
#  pbarwin.show()
# 
#  sys.exit(app.exec_())
#===============================================================================
from PyQt4.QtGui import *
from PyQt4.QtCore import *
class Progress(QProgressDialog):
    step = 0
    
    def __init__(self):
        super(Progress, self).__init__()
        self.setRange(0, 100)
        self.setModal(1)
        self.setLabelText("Please wait a moment! Don't cancel it!")
        
    def run(self):
        while self.step <= 100:
            self.setValue(self.step)
            self.step += 1
             
    def setStep(self, value):
        self.step = value
