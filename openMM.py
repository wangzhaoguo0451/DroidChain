# -*- coding: utf-8 -*-

"""
Module implementing openMM.
"""

#from PyQt4.QtGui import QDialog
#from PyQt4.QtCore import pyqtSignature
from PyQt4.QtGui import *
from PyQt4.QtCore import *
from PyQt4 import QtCore, QtGui
import os.path;   
import os;
import sys; 
import string;  
import codecs; 
from autore import Autore
from progress import Progress
try:
    _fromUtf8 = QtCore.QString.fromUtf8
except AttributeError:
    _fromUtf8 = lambda s: s
if sys.path[0] =="":
	SYSPATH = sys.path[1]
else:
	SYSPATH = sys.path[0]

from Mopen import Mopen_Dialog

class Dialog(QDialog,Mopen_Dialog):
 	descriptor=""
	descriptorB=''
	descriptorF=''
	
	def __init__(self, parent = None):
		#QDialog.__init__(self, parent)
		QListWidget.__init__(self,parent)
# 		dirpath=None
# 		FILE_EXTENSION=None.
		self.setupUi(self)
# 		self.walkTree(self,dirpath,FILE_EXTENSION)
		#self.setSelectionMode(QtGui.QAbstractItemView.ExtendedSelection)
# 		self.itemClicked.connect(self.item_click)
		#QtCore.QObject.connect(self.pushButton_ok, QtCore.SIGNAL(_fromUtf8("clicked(bool)")), pushbutton_ok_clicked)
	def item_click(self, item):
		print "item is clicked"
		#self.setSelectionMode(QtGui.QAbstractItemView.ExtendedSelection)
		self.item_click(item)
		print item, str(item.text())
		
 	def walkTree(self,dirpath,FILE_EXTENSION):
 		fileExtensionLen = len(FILE_EXTENSION);
  		content=""
 		for subFile in os.listdir(dirpath):
 			if os.path.isdir(subFile):
 				fullSubFile = str(os.getcwd()) + str(os.sep) + subFile;
 				print fullSubFile
 				self.walkTree(fullSubFile);
 			elif os.path.basename(subFile)[-fileExtensionLen:] == FILE_EXTENSION:
 				content=content+"\n"+subFile  
 #os.chdir(os.path.pardir); 
 #resultFile.writelines("\n" + "\n" + "\n" + "Total Number of Regex_files:" + str(LINE_NUMBER));   
#                 print "content->"+content
#                 print "content[1]->"+content[1]
                con=content.split("\n")
                for c in con:
                	if c!="":
                		listItem = QListWidgetItem(c, self.listWidget)
#                 for c in con:
#       	          print "c->"+c
 		for a in con:
 			import Global
#  			print "aa"+a
 			if a!="":
 			   b=dirpath+"/"+a
 			   filetype = a.split('.', 1)[1]
 			   if filetype!="apk":
 			   	print "This is not a APK"
 				if Global.AutoCONFIG["B"]==1:  # @UndefinedVariable
 					import re
 					print "re is running"
 					progress=Progress()
 					ree=Autore(progress,str(b))
 					ree.run()
 					progress.run()
 			   
 			   else:
 				if Global.AutoCONFIG["SP"]==1:  # @UndefinedVariable
 					print "G Gexf is running"
 					patha=SYSPATH+"/gexf/androguard/androgexf.py"+" -i "
 					pathb=b+" -o "+b[:-3]+"gexf"  # @UndefinedVariable
 					cmd=patha+pathb
 					print cmd
 					if os.system(unicode(cmd)) ==0:
 						print  b+"---->ok"
 			

	@pyqtSignature("bool")
	def on_pushButton_ok_clicked(self,checked):
		#print "OK"
 		self.descriptor = str(self.lineEdit_class.text())
#  		print self.descriptor
 		if self.descriptor=="/home/wang/Desktop/instanse/*.apk" or self.descriptor=="/home/wang/Desktop/instanse/*.gexf":
 			FILE_EXTENSION =self.descriptor[-3:]
 			dirpath =self.descriptor[:-6]
 		else:
 			FILE_EXTENSION =self.descriptorB
 			dirpath =self.descriptorF
# 		FILE_EXTENSION =self.descriptor[-3:]
#  		dirpath =self.descriptor[:-6]
#  		print "self.descriptor[-3:]"+self.descriptor[-3:]
#  		print "self.descriptor[:-6]"+self.descriptor[:-6]
 		self.walkTree(dirpath,FILE_EXTENSION)
# # 		print FILE_EXTENSION
# 		os.chdir(dirpath);
# 	
# 		fileExtensionLen=len(descriptor[:-6])
# 		for subFile in os.listdir(descriptor[:-6]):
# 			os.path.basename(subFile)[-fileExtensionLen:]==FILE_EXTENSION
# 			content=content+"\n"+subFile
# 		
# 		print content
#  		for c in content:
#  			print "c->"+c
		#print "descriptor[-3:]"+ descriptor[-3:]
		#print "descriptor[:-6]"+ descriptor[:-6]
#         os.chdir(descriptor[-3:]);
# 		fileExtensionLen = len(descriptor[:-6]);  
#         for subFile in os.listdir(dirpath):  
#          #print(os.getcwd());  
#         if os.path.isdir(subFile):  
#          	print "lalalalalalal"
#          	fullSubFile = str(os.getcwd()) + str(os.sep) + subFile;  
#          	print fullSubFile  
#          	walkTree(fullSubFile);  
#          elif os.path.basename(subFile)[-fileExtensionLen:] == descriptor[:-6]:  
#              collectDocument(subFile);
#              content=content+"\n"+subFile 
	@pyqtSignature("bool")
	def on_commandLinkButton_clicked(self,checked):
        
		print "halouhalouhalouou"
	@pyqtSignature("bool")
	def on_toolButton_ok_clicked(self,checked):
		dlg = QFileDialog(self)  # @UndefinedVariable
		line_ok="/"
		self.descriptor = dlg.getOpenFileName(self, _fromUtf8("选择打开文件实例"), QString(),  _fromUtf8("APK 文件 Odex 文件 Gexf 文件(*.*)"))
# 		print "abc->"+self.descriptor
		a=self.descriptor.split("/")
		for c in a:
			#print "c-->"+str(c)
# 			print c[-3:]
			if c!="" and c[-3:]!="apk" and c[-4:]!="gexf":
				line_ok=line_ok+c+"/"
			if c[-3:]=="apk":
				self.descriptorB="apk"
			elif c[-4:]=="gexf":
				self.descriptorB="gexf"
# 		print "line_ok->"+line_ok[:-1]
		self.descriptorF=line_ok
# 		print "geshi->"+self.descriptorB
# 		QListWidgetItem(self.descriptor, self.listWidget)
		self.lineEdit_class.setText(QtGui.QApplication.translate("Dialog", line_ok[:-1], None, QtGui.QApplication.UnicodeUTF8))
		
     