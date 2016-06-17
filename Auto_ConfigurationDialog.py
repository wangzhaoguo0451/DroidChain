# -*- coding: utf-8 -*-

"""
Module implementing ConfigurationDialog.
"""

#from PyQt4.QtGui import QDialog
#from PyQt4.QtCore import pyqtSignature
from PyQt4.QtGui import *
from PyQt4.QtCore import *
from PyQt4 import QtCore, QtGui
from progress import Progress
from handling import Handle
from numpy import * 
from xml.dom import minidom
import zipfile
import os.path;
import string;  
import codecs;
import re  
import logging
import time
# from dedjad import *
import os
import sys
import zipfile
from startQT import SYSPATH
from yuanlou import *
from yinsiqiequ_des import *
reload(sys)
sys.setdefaultencoding('utf-8')  # @UndefinedVariable
try:
    _fromUtf8 = QtCore.QString.fromUtf8
except AttributeError:
    _fromUtf8 = lambda s: s

from reportlab.pdfgen import canvas
from reportlab.lib.units import inch
from reportlab.lib.pagesizes import letter #
#canvas = canvas.Canvas('myfile.pdf', pagesize=letter)
import time
from reportlab.lib.enums import TA_JUSTIFY
from reportlab.lib.pagesizes import letter
from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer, Image
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
from reportlab.lib.units import inch

from APKInfo import *
from GetMethods import *
import Global
import JAD
import APKtool

import json

import os
import urllib2
from reportlab.pdfgen import canvas
import Global
# SYSTEMLINE =""
from Ui_AutoConfigurationDialog import Ui_AutoConfigurationDialog  # @UnresolvedImport
from permission_sort import permission_sort  # @UnresolvedImport
class Permission_Sort (QDialog,permission_sort):
	def __init__(self,parent=None):
		QDialog.__init__(self,parent)
		self.setupUi(self)
		readline=[]
		
		
		
		import Global
		
		if Global.Permission_CONFIG["1"] == 1:  # @UndefinedVariable
			self.checkBox_cfg.setChecked(1)
		else:
			self.checkBox_cfg.setChecked(0)
		
		if Global.Permission_CONFIG["2"] == 1:  # @UndefinedVariable
			self.checkBox_dalvik.setChecked(1)
		else:
			self.checkBox_dalvik.setChecked(0)
		
		if Global.Permission_CONFIG["3"] == 1:  # @UndefinedVariable
			self.checkBox_javacode.setChecked(1)
		else:
			self.checkBox_javacode.setChecked(0)
		
		if Global.Permission_CONFIG["4"] == 1:  # @UndefinedVariable
			self.checkBox_bytecode.setChecked(1)
		else:
			self.checkBox_bytecode.setChecked(0)
		
		if Global.Permission_CONFIG["5"] == 1:  # @UndefinedVariable
			self.checkBox_smalicode.setChecked(1)
		else:
			self.checkBox_smalicode.setChecked(0)
		if Global.Permission_CONFIG["6"] == 1:  # @UndefinedVariable
			self.checkBox_callin.setChecked(1)
		else:
			self.checkBox_callin.setChecked(0)
		
	@pyqtSignature("bool")
	def on_pushButton_ok_clicked(self, checked):
		import Global
		if self.checkBox_cfg.isChecked():
			Global.Permission_CONFIG["1"] = 1  # @UndefinedVariable
			print "Yingjian is clicked"
			self.pipei_apk_BG(_fromUtf8("硬件层"))
		else:
			Global.Permission_CONFIG["1"] = 0  # @UndefinedVariable
		
		if self.checkBox_dalvik.isChecked():
			Global.Permission_CONFIG["2"] = 1  # @UndefinedVariable
			print "Yongying is clicked"
			self.pipei_apk_BG(_fromUtf8("API分析"))
		else:
			Global.Permission_CONFIG["2"] = 0  # @UndefinedVariable
			
		if self.checkBox_javacode.isChecked():
			Global.Permission_CONFIG["3"] = 1  # @UndefinedVariable
			print "Yinsi is clicked"
		else:
			Global.Permission_CONFIG["3"] = 0  # @UndefinedVariable
		
		if self.checkBox_bytecode.isChecked():
			Global.Permission_CONFIG["4"] = 1  # @UndefinedVariable
			print "XinxiPohuai is clicked"
# 			self.pipei_apk(_fromUtf8("信息破坏"))
		else:
			Global.Permission_CONFIG["4"] = 0  # @UndefinedVariable
			
		if self.checkBox_smalicode.isChecked():
			Global.Permission_CONFIG["5"] = 1  # @UndefinedVariable
			print "Xinxiqipian is clicked"
# 			self.pipei_apk(_fromUtf8("信息欺骗与骚扰"))
# 			dlg = QFileDialog(self)  # @UndefinedVariable
# 			zifilename = dlg.getOpenFileName(self, _fromUtf8("打开 信息欺骗与骚扰 (*.txt)文件"), QString(),  _fromUtf8(" *.txt 文件(*.*)"))
#  			dlgs = QFileDialog(self)
# 			Master_filename = dlgs.getOpenFileNames(self, _fromUtf8("打开文件"), QString(),  _fromUtf8("APK 文件 Odex 文件 Gexf 文件(*.*)"))
# 			report=""
# 			report += "*******************************"
# 			report += "report-permission_contained: "
# 			report += report
# 			report += "*******************************"
# 			report += "\n\n"
# 			for name in Master_filename:
# 				print name[:-4]+"_report.txt"
# 				text=open(zifilename,'r+')
# 				text_s=text.readlines()
# 				text.close()
# 				Writename=name[:-4]+"_report.txt"				
# 				text=open(name,'r+')
# 				text_m=text.readlines()
# 				print text_m
# 				for i in range(len(text_s)):
# 					print "ok"
# 					for j in range(len(text_m)):
# 						if text_m[j].find(text_s[i])!=-1:
# 							report +=text_s[i]
# 				text_s=open(Writename,'a+')
# 				text_s.write(report)
# 				text_s.write("\n")
# 				text_s.close()
# 				QMessageBox.warning(self,'report','xinxi-qipian')
# 			text.close()
		else:
			Global.Permission_CONFIG["5"] = 0  # @UndefinedVariable
			
		if self.checkBox_callin.isChecked():
			Global.Permission_CONFIG["6"] = 1  # @UndefinedVariable
			print "gongneng zuduan is clicked"
			self.pipei(_fromUtf8("功能阻断"))
#  			self.pipei(_fromUtf8("功能阻断"))
		else:
			Global.Permission_CONFIG["6"] = 0  # @UndefinedVariable
			
	def report_read_xml(self,input,id):
		from xml.dom import minidom
		import numpy as np
		xmldoc=minidom.parse(input)
		print "Enter report_read_xml"
		nodelist=xmldoc.getElementsByTagName("node")
# 		print id
# 		print int(id)
		node=nodelist[(int(id))]
		valuelist=node.getElementsByTagName("attvalue")
		if valuelist[1].getAttribute("id").find("2")!=-1:
			return valuelist[1].getAttribute("value")
# 			s=sss[0]
# 			print s.attributes.keys()
# 			print s.attributes["id"].value
# 			print s
# 			for instance in node.childNodes:
# 				instance.getElementsByTagName("value")
# 			print node.childNodes
# 			currentnode=xmldoc.getElementsByTagName(m)
# 			print currentnode
# 			print "2"
# 			for instance in node.childNodes:
# 				print instance.getAttribute("value") 
	def read_xml(self,input,readline):
		from xml.dom import minidom
		import numpy as np
		count=0
		countb=0
		countt=0
		front=0
		back={}
		D={}
		T={}
# 		xmldoc=minidom.parse('/home/wang/Desktop/AndroidMalwareSample/sp_ntm.gexf')
		xmldoc=minidom.parse(input)
 		for node in xmldoc.getElementsByTagName("node"):
 			if node.getAttribute("id")>int(count):
 				count=node.getAttribute("id")
 			else:
 				count=count
		print "count-->:"
		print count
		G=zeros((int(count)+1,int(count)+1))
		G1=zeros((int(count)+1,int(count)+1))
		for node in xmldoc.getElementsByTagName("edge"):
			x = int(node.getAttribute("source"))
			y = int(node.getAttribute("target"))
			G[x,y]=1
		print "G-->:\n"
		print G
# 		for i in range(int(count)+1):
# 			for j in range(int(count)+1):
# 				for k in range(int(count)+1):
# 					if (G[i-1,j-1] and (G[i-1,k-1] or G[j-1,k-1])):
# 						G1[i-1,k-1]=1
		print "Second-G1-->:\n"
		print G1
# 		print G[30, 32]
		lou=[]
		yuan={}
# 		dlg = QFileDialog(self)  # @UndefinedVariable
# 		zifilename = dlg.getOpenFileName(self, _fromUtf8("请打开")+_fromUtf8("API分析"), QString(),  _fromUtf8(" *.txt 文件(*.txt)"))
# 		readline=open(zifilename,'r+')
# 		readline=open("/home/wang/Desktop/AndroidMalwareSample/p-and-f-temp.txt",'r+')
		for read in readline.readlines():
			reada=read.split('|')
			for j in range(len(reada)):
				yuan[j]=reada[j]
# 			print "target"
# 			print yuan[0]
			for node in xmldoc.getElementsByTagName("node"):
				if node.getAttribute("label").find(yuan[0])!=-1:
					m=node.getAttribute("id")
# 					print "aa"
					for node in  xmldoc.getElementsByTagName("node"):
# 						print "bb"
						if node.getAttribute("id")==m:
							print node.getAttribute("label")

#meiyong			
	def result_tongji_sub(self,permissionDict,permission,count,G,input):
				APILocationList = permissionDict[permission]
				d2d={}
				counta=0
				for api in APILocationList:
					li = api.split("  --->  ")
					APIName = li[1]
					methodName = li[0][:li[0].index(" (@")]
					where = li[0][li[0].rindex("("):]
					xmldoc=minidom.parse(input)
					for node in xmldoc.getElementsByTagName("node"):
						if node.getAttribute("label").find(methodName)!=-1:
							temp=node.getAttribute("id")
							for j in range(int(count)+1):
								if G[int(temp),j]==1:
									m=j
									for k in range(int(count)+1):
										G[int(temp),k]=G[int(temp),k] or G[j,k]
							for jj in range(int(count)+1):
								jjj=int(count)-jj
								if G[int(temp),jjj]==1:
									for k in range(int(count)+1):
										G[int(temp),k]=G[int(temp),k] or G[jjj,k]
				for m1 in range(int(count)+1):
					if G[int(temp),m1]==1:
						d2d.setdefault(permission,{})[counta]=m1
						counta +=1
 				counta=0
				return (d2d,int(temp))
	def result_tongji(self,permissionDict,input):
		count=0
		temp=0
		yuan={}
		write_usedpath_content=""
		permissionContent = ""
		API_content=""
		import time
		a=time.localtime()
 		xmldoc=minidom.parse(input)
 		for node in xmldoc.getElementsByTagName("node"):
 			if node.getAttribute("id")>int(count):
 				count=node.getAttribute("id")
 			else:
 				count=count
 		G=zeros((int(count)+1,int(count)+1))
 		G1=zeros((int(count)+1,int(count)+1))
 		G2=zeros((int(count)+1,int(count)+1))
# 		G1=zeros((int(count)+1,int(count)+1))
 		for node in xmldoc.getElementsByTagName("edge"):
 			x = int(node.getAttribute("source"))
 			y = int(node.getAttribute("target"))
 			G[y,x]=1
 		d2d={}
 		d2d1={}
 		d2d2={}
		counta=1
		countb=1
		countc=0
		key_d={}
		d2d_num={}
 		for permission in permissionDict.keys():
 			for key in xinxi_qiequ_yuan.keys():
 				if permission.find(key)!=-1:
 					d2d1,temp=self.result_tongji_sub(permissionDict,permission,count,G,input)
 					for key1 in d2d1.keys():
 						for x in range(len(d2d1[key1])):
 							d2d.setdefault(key1,{})[x]=d2d1[key1][x]
 			print "1"
 			if isinstance(d2d,dict):
 				for x in range(len(d2d)):
 						print "%s :%s"%(d2d.keys()[x],d2d[d2d.keys()[x]])
 			print "2"
 			for keyy in xinxi_xie_loudian.keys():
 				if permission.find(keyy)!=-1:
 					d2d2,temp=self.result_tongji_sub(permissionDict,permission,count,G,input)
 					for key2 in d2d2.keys():
 						for x in range(len(d2d2[key2])):
 							d2d.setdefault(key2,{})[x]=d2d2[key2][x] 			
 		for key in xinxi_qiequ_yuan.keys():
 			if key in d2d.keys():
 				print d2d[key]
 				print "yuan\n"
 				for keyy in xinxi_xie_loudian.keys():
 					if keyy in d2d.keys():
 						print d2d[keyy]
 						print "lou\n"
 						print len(d2d[key])
 						print len(d2d[keyy])
 						for i in range(len(d2d[key])):
 							for j in range(len(d2d[keyy])):
 								if d2d[key][i]==d2d[keyy][j]:
 									countc +=1
 									upd2dnum={countc:d2d[key][i]}
 									d2d_num.update(upd2dnum)
 									updateDict={key:keyy}
 									key_d.update(updateDict)
 		return (key_d,d2d,countc,d2d_num)
 									

		
	def tongji(self,input,readline):
		count=0
		temp=0
		yuan={}
		write_usedpath_content=""
# 		xmldoc=minidom.parse('/home/wang/Desktop/AndroidMalwareSample/sp_ntm.gexf')
		xmldoc=minidom.parse(input)
		for node in xmldoc.getElementsByTagName("node"):
			if node.getAttribute("id")>int(count):
				count=node.getAttribute("id")
			else:
				count=count
		G=zeros((int(count)+1,int(count)+1))
		G1=zeros((int(count)+1,int(count)+1))
		for node in xmldoc.getElementsByTagName("edge"):
			x = int(node.getAttribute("source"))
			y = int(node.getAttribute("target"))
			G[y,x]=1
# 		readline=open("/home/wang/Desktop/AndroidMalwareSample/p-and-f-temp.txt",'r+')
		write_usedpath=open(input[:-4]+"txt",'a+')
		for read in readline.readlines():
			reada=read.split('|')
			for j in range(len(reada)):
				yuan[j]=reada[j]
# 				print yuan[j]
			for node in xmldoc.getElementsByTagName("node"):
				if node.getAttribute("label").find(yuan[0])!=-1:
					temp=node.getAttribute("id")
					print "Find temp"
 					print temp
 					print node.getAttribute("label")					
					for j in range(int(count)+1):
						if G[int(temp),j]==1:
							m=j
# 							print "-->"
# 							print m
							for k in range(int(count)+1):
								G[int(temp),k]=G[int(temp),k] or G[j,k]
					for jj in range(int(count)+1):
						jjj=int(count)-jj
						if G[int(temp),jjj]==1:
# 							print jjj
							for k in range(int(count)+1):
								G[int(temp),k]=G[int(temp),k] or G[jjj,k]
					for m1 in range(int(count)+1):
						if G[int(temp),m1]==1:
							tempp=m1
							for m2 in range(int(count)+1):
								if G[tempp,m2]==1:
									print "Used path:"
									write_usedpath_content +="Used path:"+"\n"
									print int(temp)
									write_usedpath_content +=temp+":"
									print yuan[0]
									write_usedpath_content +=yuan[0]+"\n"
									print "->"
									write_usedpath_content +="->"+"\n"
									print tempp
									write_usedpath_content +=str(tempp)+":"
									for node in xmldoc.getElementsByTagName("node"):
										if int(node.getAttribute("id"))==tempp:
											print node.getAttribute("label")
											write_usedpath_content +=node.getAttribute("label")+"\n"
									print "->"
									write_usedpath_content +="->"+"\n"
									print m2
									write_usedpath_content +=str(m2)+":"
									for node in xmldoc.getElementsByTagName("node"):
										if int(node.getAttribute("id"))==m2:
											print node.getAttribute("label")
											write_usedpath_content +=node.getAttribute("label")+"\n"
		write_usedpath.write(write_usedpath_content)
		write_usedpath.close()
		write_usedpath_content=""
  				 
 

	def creatpdf(self,input,output):
# 		texts=open('/home/wang/Desktop/AndroidMalwareSample/ze.txt','r+')
		textinput=open(input,'r+')
		textinput_s=textinput.readlines()
# 		output="/home/wang/Desktop/helloworld.pdf"
		c = canvas.Canvas(output)
		textobject = c.beginText()
		textobject.setTextOrigin(inch,11*inch)
		for line in textinput_s:
			textobject.textLine(line.strip())
		c.drawText(textobject)
		c.showPage()
		c.save()
	
	def collection(self,DEFAULT_DIR,FILE_EXTENSION,patten):
# 		global SYSTEMLINE
		dirpath = DEFAULT_DIR
		Global.SYSTEMLINE += "     FILE:%s%s%s" % (str(os.getcwd()), str(os.sep), str(os.path.basename(dirpath)));
		return self.walkTree(dirpath,FILE_EXTENSION,patten);
	def walkTree(self,dirpath,FILE_EXTENSION,patten):
# 		global SYSTEMLINE
		os.chdir(dirpath);
		fileExtensionLen = len(FILE_EXTENSION);
		for subFile in os.listdir(dirpath):
			if os.path.isdir(subFile):
				fullSubFile = str(os.getcwd()) + str(os.sep) + subFile;
				self.walkTree(fullSubFile,FILE_EXTENSION,patten);
			elif os.path.basename(subFile)[-fileExtensionLen:] == FILE_EXTENSION:
				self.collectDocument(subFile,patten);
		os.chdir(os.path.pardir);
	
	def collectDocument(self,subFile,patten):
		return self.countDirectoryLineNumber(subFile,patten)
	
	def countDirectoryLineNumber(self,subFile,patten):
		open = codecs.open;
# 		global SYSTEMLINE
		reportline=""
		newFileObject = open(subFile, "r+",'utf-8');
		allLines = newFileObject.readlines();
		count = 0
		for eachline in allLines:			
			m = re.search(patten,eachline)
			if m is not None:
				Global.SYSTEMLINE += "  "+subFile +"\n"
				Global.SYSTEMLINE += "     Line:" + str(count) + "     :"+str(m.group(0)) +"\n"
				count += 1
		newFileObject.close()
		return reportline
# 	def collection(self,DEFAULT_DIR,FILE_EXTENSION,patten):
# 		dirpath = DEFAULT_DIR
# 		return self.walkTree(dirpath,FILE_EXTENSION,patten);
# 	def walkTree(self,dirpath,FILE_EXTENSION,patten):
# 		os.chdir(dirpath);
# 		print "dirpath"+dirpath
# 		fileExtensionLen = len(FILE_EXTENSION);
# 		for subFile in os.listdir(dirpath):
# 			if os.path.isdir(subFile):
# 				fullSubFile = str(os.getcwd()) + str(os.sep) + subFile;
# 				self.walkTree(fullSubFile,FILE_EXTENSION,patten);
# 			elif os.path.basename(subFile)[-fileExtensionLen:] == FILE_EXTENSION:
# 				return self.collectDocument(subFile,patten);
# 		os.chdir(os.path.pardir);
# 	
# 	def collectDocument(self,subFile,patten):
# 		return self.countDirectoryLineNumber(subFile,patten)
# 	
# 	def countDirectoryLineNumber(self,subFile,patten):
# 		open = codecs.open;
# 		reportline=""
# 		newFileObject = open(subFile, "r+",'utf-8');
# 		allLines = newFileObject.readlines();
# 		count=0
# 		for eachline in allLines:
# 			m = re.match(patten,eachline)
# 			if m is not None:
# 				Global.SYSTEMLINE += "  "+subFile +"\n"
# 				Global.SYSTEMLINE += "     Line:" + str(count) + "     :"+str(m.group(0)) +"\n"
# 				count +=1
# # 				reportline +=eachline
# # 				reportline +="\n"
# 		newFileObject.close()
# 		return reportline
		
# 	def appendDocToResultFile(self,subFile, resultFile):
# 		inDocArea = False;
# 		for fileLine in subFile:
# 			if fileLine.find(DOC_TAG) > 0:
# 				inDocArea = True;
# 			if inDocArea:
# 				resultFile.writelines(fileLine);
# 			if inDocArea and fileLine.find(DOC_TAG) > 0:
# 				resultFile.writelines(fileLine);
# 				resultFile.close();
# 				break; 

	def pipei_apk_BG(self,function_name):
		zifilename=SYSPATH+"/yangben.txt"
		texts=open(zifilename,'r+')
		text_s=texts.readlines()
		dlgs = QFileDialog(self)  # @UndefinedVariable
		Master_filename = dlgs.getOpenFileNames(self, _fromUtf8("请打开（可以选择多个文件）APK文件"), QString(),  _fromUtf8("APK 文件(*.apk)"))
		report=""
		import time
		a=time.localtime()
		time_filename="_"+str(a.tm_year)+"-"+str(a.tm_mon)+"-"+str(a.tm_mday)+"_"+str(a.tm_hour)+"-"+str(a.tm_min)+"-"+str(a.tm_sec)
		key_d={}
		d2d={}
		for name in Master_filename:
#  			readline=open(zifilename,'r+')
			if not zipfile.is_zipfile(name):
				print "This not a APK file"
			else:
				Writename=name[:-4]+time_filename+"_report.txt"
				apkinfo=APK(_fromUtf8(str(name)))
				report +="*******************************"
				report +="*******APKInformation********"
				report +="*******************************"
				report +="\n\n"
				report +="Filename:"+apkinfo.getFilename()+"\n"
				report +="Date:"+str(a.tm_year)+"/"+str(a.tm_mon)+"/"+str(a.tm_mday)+"-"+str(a.tm_hour)+":"+str(a.tm_min)+":"+str(a.tm_sec)+"\n"
				report +="VersionCode:"+apkinfo.getVersionCode()+"\n"
				report +="VersionName:"+apkinfo.getVersionName()+"\n"
				report +="Receivers:"+apkinfo.getReceivers()[0]+"\n"
				report +="Services:"+apkinfo.getServices()[0]+"\n"
				report +="Package:"+apkinfo.getPackage()+"\n\n\n"
				permissions=apkinfo.getPermissions()[0].split("\n")
				numbers=apkinfo.getPermissions()[1]
# 				report += "*******************************"
# 				report += "report-permission_contained: "
# 				report += "*******************************"
# 				report += "\n\n"
				d={}
				con=0
				count=0
				sum =100
				if Global.Permission_CONFIG["2"]==1:  # @UndefinedVariable
					report += "********************************"
					report += "*******敏感行为***** "
					report += "********************************"
					report += "\n\n"
					for m in range(numbers):
						for key in xinxi_qiequ_yuan.keys():
							if permissions[m].find(key)!=-1:
								report +=key+":\n"+"        "+str(xinxi_qiequ_yuan[key])
								report +="\n"
								sum -=5
						for key_s in xinxi_xie_loudian.keys():
# 							print key_s
							if permissions[m].find(key_s)!=-1:
								report +=key_s+":\n"+"        "+str(xinxi_xie_loudian[key_s])
								report +="\n"
								sum -=5
					report +="\n"
# 					for i in range(len(text_s)-1):
# 						text_ss=text_s[i].split('|')
# 						for j in range(len(text_ss)-1):
# 							updateDict={text_ss[j]:count}
# 							d.update(updateDict)
# 							for m in range(numbers):
# 								if permissions[m].find(text_ss[j])!=-1:
# 									d[text_ss[j]] +=1
# 						for value in d.values():
# 							if(value==0):
# 								con +=1
# 							d.clear()
# 						if (con==0):
# 							report +=text_s[i]
# 							sum -=5
# 						con=0					
				if Global.Permission_CONFIG["2"]==1:  # @UndefinedVariable
 					  report += "\n\n****************************************"
 					  report += "隐私窃取行为检测: "
 					  report += "****************************************\n\n"
 					  patha=SYSPATH+"/androguard/androgexf.py"+" -i "+name+" -o "
 					  pathb=name[:-3]+"gexf"
 					  cmd=patha+pathb
  					  os.system(unicode(cmd))
					  print pathb
					  temp1="get_phone_state"
 					  try:
 					  	VM = DalvikVMFormat(apkinfo.getDex())  # @UndefinedVariable
 					  	VMX = analysis.VMAnalysis(VM)
 					  	CL=CLASS(apkinfo,VM,VMX)
 					  	permissionDict = CL.get_permission()
 					  	key_d,d2d,key_count,d2d_num=self.result_tongji(permissionDict, str(pathb))
 					  	if isinstance(d2d,dict):
 					  		for x in range(len(d2d)):
 					  			print "%s :%s"%(d2d.keys()[x],d2d[d2d.keys()[x]])
 					  	print key_d.items()
 					  	print key_count
 					  	report +="隐私窃取:"
 					  	report +="\n" 					  	
 					  	for key in key_d.keys():
 					  		for key_des in xinxi_qiequ_yuan.keys():
 					  			if key.find(key_des)!=-1:
#  					  				print xinxi_qiequ_yuan[key_des]
#  					  				report +="   信息窃取源:"
#  					  				report +=key_des
#  					  				report +="\n"
#  					  				report +="   描述:"
#  					  				report +=xinxi_qiequ_yuan[key_des][1]+":"+xinxi_qiequ_yuan[key_des][2]
  					  				des1=key_des
#  					  				report +=str(xinxi_qiequ_yuan[key_des])
#  					  				report +="\n"
 					  		for key_desa in xinxi_xie_loudian.keys():
 					  			if key_d[key].find(key_desa)!=-1:
#  					  				print "xinxixieloudian"
#  					  				print xinxi_xie_loudian[key_desa]
#  					  				report +="   信息泄漏点:"
#  					  				report +=key_desa
#  					  				report +="\n"
#  					  				report +="   描述:"
#  					  				report +=xinxi_xie_loudian[key_desa][1]+":"+xinxi_xie_loudian[key_desa][2]
 					  				des2=key_desa
#  					  				report +=str(xinxi_xie_loudian[key_desa])
#  					  				report +="\n"
#  					  		report +="   恶意行为描述:"
#  					  		report +="\n"
 					  		report +="   该软件涉嫌"#读取手机状态和身份"隐私信息,并通过"短信或者彩信"方式泄漏:"
#  					  		report +="\n"
#  					  		report +="   "
 					  		report +=json.dumps(yinsiqiequ[xinxi_qiequ_yuan[des1][3]],encoding="UTF-8",ensure_ascii=False)
 					  		report +="隐私信息,并通过"
 					  		report +=json.dumps(yinsiqiequ[xinxi_xie_loudian[des2][3]],encoding="UTF-8",ensure_ascii=False)
 					  		report +="方式泄漏.\n\n"
 					  		for key_des in xinxi_qiequ_yuan.keys():
 					  			if key.find(key_des)!=-1:
  					  				print xinxi_qiequ_yuan[key_des]
  					  				report +="   信息窃取点:"
  					  				report +=key_des
  					  				report +="\n"
  					  				report +="   描述:"
  					  				report +=xinxi_qiequ_yuan[key_des][1]+":"+xinxi_qiequ_yuan[key_des][2]
#   					  				report +=str(xinxi_qiequ_yuan[key_des])
  					  				report +="\n"
 					  		for key_desa in xinxi_xie_loudian.keys():
 					  			if key_d[key].find(key_desa)!=-1:
  					  				print "xinxixieloudian"
  					  				print xinxi_xie_loudian[key_desa]
  					  				report +="   信息泄漏点:"
  					  				report +=key_desa
  					  				report +="\n"
  					  				report +="   描述:"
  					  				report +=xinxi_xie_loudian[key_desa][1]+":"+xinxi_xie_loudian[key_desa][2]
#   					  				report +=str(xinxi_xie_loudian[key_desa])
  					  				report +="\n\n"
  					  		report +="行为链流程图:\n"
  					  		report +="***************************\n"
  					  		report +="*      隐私窃取             *\n"
  					  		report +="***************************\n"
  					  		report +="%s\n"%des1
  					  		report +="%s\n"%json.dumps(yinsiqiequ[xinxi_qiequ_yuan[des1][3]],encoding="UTF-8",ensure_ascii=False)
  					  		report +="***************************\n"
  					  		report +="           |\n"
  					  		report +="           |\n"
  					  		report +="           V\n"
  					  		report +="***************************\n"
  					  		report +="*      关键传递路径          *\n"
  					  		report +="***************************\n"
  					  		for x in range(len(d2d_num)):
  					  			print d2d_num[x+1]
  					  			report +="%s\n"%self.report_read_xml(str(pathb), d2d_num[x+1])
  					  		report +="***************************\n"
  					  		report +="           |\n"
  					  		report +="           |\n"
  					  		report +="           V\n"
  					  		report +="***************************\n"
  					  		report +="*      隐私信息泄漏          *\n"
  					  		report +="***************************\n"
  					  		report +="%s\n"%des2
  					  		report +="%s\n"%json.dumps(yinsiqiequ[xinxi_xie_loudian[des2][3]],encoding="UTF-8",ensure_ascii=False)
  					  		report +="***************************\n"
  					  		print xinxi_qiequ_yuan[des1][1]
  					  		print json.dumps(yinsiqiequ[xinxi_xie_loudian[des2][3]],encoding="UTF-8",ensure_ascii=False)
#  					  		print xinxi_xie_loudian[des2][1]该软件涉及如下行为:读取手机状态信息，通过短信或者彩信发送出去
 					  	
#  					  	for key in xinxi_qiequ_yuan.keys():
#  					  		for keyy in xinxi_xie_loudian.keys():
#  					  	d1={ }
#  					  	for key in xinxi_qiequ_yuan.keys():
#  					  		for keyy in xinxi_xie_loudian.keys():
#  					  			self.result_tongji(key,keyy,permissionDict, str(pathb))
#  					  		print Global.d2d[key]
#   					  	self.tongji(str(pathb), readline)
#  					  	print "readline"
#  					  	self.read_xml(str(pathb),readline)
 					  except ValueError:
 					  	print "The Array can't be defined because the count is too big\n"
 					  	continue
   				java=AutoConfigurationDialog()
   				java.decompile(str(name))
   				DOC_TAG = "'''";
   				FILE_COUNT = 0;
   				FILE_EXTENSION = ".java";
   				LINE_NUMBER = 0;
   				COUNT_LINE_NUMBER = True;
   				DEFAULT_DIR =Global.report_Javapath+"/"  # @UndefinedVariable
   				report += "\n\n*************************************"
   				report += "IP&URL_contained: "
   				report += "*************************************\n\n"
   				patten1 = r"(.*)(((2[0-4]\d)|(25[0-5])|([01]?\d\d?))\.){3}((2[0-4]\d)|(25[0-5])|([01]?\d\d?))"#IP
   				report +="IP-contained:"+"\n"
   				Global.SYSTEMLINE = ""
   				str(self.collection(DEFAULT_DIR, FILE_EXTENSION, patten1))
   				report +=Global.SYSTEMLINE
   				report +="\n"
   				patten2 = r"(.*)[a-zA-Z]+://(\w+(-\w+)*)(\.(\w+(-\w+)*))*(\?\S)?"#URL
   				report +="URL-contained:"+"\n"
   				Global.SYSTEMLINE = ""
   				str(self.collection(DEFAULT_DIR, FILE_EXTENSION, patten2))
 				report +=Global.SYSTEMLINE
				report +="\n"
				report +="\n\n"+"软件健康得分：-->"+str(sum)
				text_report=open(Writename,'a+')
				text_report.write(report)
				report=""
				text_ss=""
				con=0
				text_report.write("\n")
				text_report.close()
				# 				texts.close()
# 				report +="\n\n"+"软件健康得分：-->"+str(sum)
# 				text_ss=""
# 				con=0

		
		
	def pipei_apk(self,function_name):
		dlg = QFileDialog(self)  # @UndefinedVariable
		zifilename = dlg.getOpenFileName(self, _fromUtf8("请打开")+function_name+_fromUtf8("敏感权限样本文件"), QString(),  _fromUtf8(" *.txt 文件(*.*)"))
		dlgs = QFileDialog(self)  # @UndefinedVariable
		texts=open(zifilename,'r+')
		text_s=texts.readlines()
		Master_filename = dlgs.getOpenFileNames(self, _fromUtf8("请打开（可以选择多个文件）APK文件"), QString(),  _fromUtf8("APK 文件 Odex 文件 Gexf 文件(*.*)"))
		report=""
		import time
		a=time.localtime()
		time_filename="_"+str(a.tm_year)+"-"+str(a.tm_mon)+"-"+str(a.tm_mday)+"_"+str(a.tm_hour)+"-"+str(a.tm_min)+"-"+str(a.tm_sec)
		for name in Master_filename:
			if not zipfile.is_zipfile(name):
				print "This not a APK file"
			else:
				Writename=name[:-4]+time_filename+"_report.txt"
				apkinfo=APK(_fromUtf8(str(name)))
				report +="*******************************"
				report +="*******APKInformation********"
				report +="*******************************"
				report +="\n\n"
				report +="Filename:"+apkinfo.getFilename()+"\n"
				report +="Date:"+str(a.tm_year)+"/"+str(a.tm_mon)+"/"+str(a.tm_mday)+"-"+str(a.tm_hour)+":"+str(a.tm_min)+":"+str(a.tm_sec)+"\n"
				report +="VersionCode:"+apkinfo.getVersionCode()+"\n"
				report +="VersionName:"+apkinfo.getVersionName()+"\n"
				report +="Receivers:"+apkinfo.getReceivers()[0]+"\n"
				report +="Services:"+apkinfo.getServices()[0]+"\n"
				report +="Package:"+apkinfo.getPackage()+"\n\n\n"
				permissions=apkinfo.getPermissions()[0].split("\n")
				numbers=apkinfo.getPermissions()[1]
				report += "*******************************"
				report += "report-permission_contained: "
				report += "*******************************"
				report += "\n\n"
				d={}
				con=0
				count=0
				sum =100
				for i in range(len(text_s)-1):
					text_ss=text_s[i].split('|')
					for j in range(len(text_ss)-1):
						updateDict={text_ss[j]:count}
						d.update(updateDict)
						for m in range(numbers):
							if permissions[m].find(text_ss[j])!=-1:
								d[text_ss[j]] +=1
					for value in d.values():
						if(value==0):
							con +=1
						d.clear()
					if (con==0):
						report +=text_s[i]
						sum -=5
					con=0
				texts.close()
				report +="\n\n"+"软件健康得分：-->"+str(sum)
				text_report=open(Writename,'a+')
				print "report_filename"+Writename
				text_report.write(report)
				report=""
				text_ss=""
				con=0
				text_report.write("\n")
				text_report.close()

		
	def pipei(self,function_name):
         dlg = QFileDialog(self)  # @UndefinedVariable
         zifilename = dlg.getOpenFileName(self, _fromUtf8("请打开")+function_name+_fromUtf8("敏感权限样本文件"), QString(),  _fromUtf8(" *.txt 文件(*.*)"))
#          print "zifilename-->"+zifilename
         dlgs = QFileDialog(self)  # @UndefinedVariable
         Master_filename = dlgs.getOpenFileNames(self, _fromUtf8("请打开（可以选择多个文件）待分析的由APK生成的保存Permission的文件"), QString(),  _fromUtf8("APK 文件 Odex 文件 Gexf 文件(*.*)"))
         report=""
         for name in Master_filename:
         	print "Name is->"
         	report += "*******************************"
         	report += "report-permission_contained: "
         	report += "*******************************"
         	report += "\n\n"
         	texts=open(zifilename,'r+')
         	text_s=texts.readlines()
         	d={}
         	con=0
         	count=0
#          	print "qian"
#          	print text_s
#          	print name[:-4]+"_report.txt"
         	Writename=name[:-4]+"_report.txt"
         	name1="/home/wang/Desktop/B/a.apk"
#          	name1="/home/wang/Desktop/B/laven音乐.apk"
         	textm=open(name1,'r+')
         	print "laven音乐.apk is opened\n"
         	text_m=textm.readlines()
         	for i in range(len(text_s)-1):
         		text_ss=text_s[i].split('|')
#          		print "hou"
#          		print text_ss
         		#print text_ss[len(text_ss)-1]
          		for j in range(len(text_ss)-1):
          			updateDict={text_ss[j]:count}
  		    		d.update(updateDict)
          			for m in range(len(text_m)):
          				if text_m[m].find(text_ss[j])!=-1:
          					d[text_ss[j]] +=1
          		for value in d.values():
             			print value
            			print d.items()
          			if(value==0):
          				con +=1
          		d.clear()
          		if (con==0):
          			report +=text_s[i]
          		con=0
#           		print "lalalalalala"
          	QMessageBox.warning(self,'report',function_name)
#           			report +=text_ss[j]+"-->"+text_ss[len(text_ss)-1]         			
         	texts.close()
         	textm.close()
#          	print text_m
         	text_s=open(Writename,'a+')
         	text_s.write(report)
         	report=""
         	text_ss=""
         	con=0
         	text_s.write("\n")
         	text_s.close()
#          	output=name[:-4]+"report.pdf"
#          	self.creatpdf(Writename,output)

		

class AutoConfigurationDialog(QDialog, Ui_AutoConfigurationDialog):

    def __init__(self, parent = None):
        """
        Constructor
        """
        QDialog.__init__(self, parent)
        self.setupUi(self)
        
        import Global
        
        if Global.AutoCONFIG["SP"] == 1:  # @UndefinedVariable
            self.checkBox_cfg.setChecked(1)
        else:
            self.checkBox_cfg.setChecked(0)
            
        if Global.AutoCONFIG["B"] == 1:  # @UndefinedVariable
            self.checkBox_dalvik.setChecked(1)
        else:
            self.checkBox_dalvik.setChecked(0)

        if Global.AutoCONFIG["C"] == 1:  # @UndefinedVariable
            self.checkBox_javacode.setChecked(1)
        else:
            self.checkBox_javacode.setChecked(0)


        if Global.AutoCONFIG["D"] == 1:  # @UndefinedVariable
            self.checkBox_bytecode.setChecked(1)
        else:
            self.checkBox_bytecode.setChecked(0)
            
            
        if Global.AutoCONFIG["E"] == 1:  # @UndefinedVariable
            self.checkBox_smalicode.setChecked(1)
        else:
            self.checkBox_smalicode.setChecked(0)


        if Global.AutoCONFIG["F"] == 1:  # @UndefinedVariable
            self.checkBox_callin.setChecked(1)
        else:
            self.checkBox_callin.setChecked(0)
 
 
        if Global.AutoCONFIG["G"] == 1:  # @UndefinedVariable
            self.checkBox_callout.setChecked(1)
        else:
            self.checkBox_callout.setChecked(0)
            
        if Global.AutoCONFIG["H"] == 1:  # @UndefinedVariable
            self.checkBox_permission.setChecked(1)
        else:
            self.checkBox_permission.setChecked(0)
            
            
        if Global.AutoCONFIG["I"] == 1:  # @UndefinedVariable
            self.checkBox_manifest.setChecked(1)
        else:
            self.checkBox_manifest.setChecked(0)
    
    @pyqtSignature("bool")
    def on_pushButton_ok_clicked(self, checked):
        """
        Slot documentation goes here.
        """
        import Global

        if self.checkBox_cfg.isChecked():
            Global.AutoCONFIG["SP"] = 1  # @UndefinedVariable
            print "Gexf is clicked"
        else:
            Global.AutoCONFIG["SP"] = 0  # @UndefinedVariable
         
            
        if self.checkBox_dalvik.isChecked():
            Global.AutoCONFIG["B"] = 1  # @UndefinedVariable
            print "py.py is clicked"
            dlg = QFileDialog(self)  # @UndefinedVariable
            Global.refilename = dlg.getOpenFileName(self, _fromUtf8("打开 RE(*.txt)文件"), QString(),  _fromUtf8(" *.txt 文件(*.*)"))
            print "refilename"+Global.refilename  # @UndefinedVariable
            #filetype = filename.split('.', 1)[1]
        else:
            Global.AutoCONFIG["B"] = 0  # @UndefinedVariable
            
        if self.checkBox_javacode.isChecked():
            Global.AutoCONFIG["C"] = 1  # @UndefinedVariable
            import time
            a=time.localtime()
            time_filename="_"+str(a.tm_year)+"-"+str(a.tm_mon)+"-"+str(a.tm_mday)+"_"+str(a.tm_hour)+"-"+str(a.tm_min)+"-"+str(a.tm_sec)
            dlg=QFileDialog(self)
            filename=dlg.getOpenFileNames(self,_fromUtf8("请打开（可以选择多个文件）APK文件"), QString(),  _fromUtf8("APK 文件 Odex 文件 Gexf 文件(*.apk)"))
            for name in filename:
            	apkinfo=APK(_fromUtf8(str(name)))
#             	permissions=apkinfo.getPermissions()[0].split("\n")
            	Writename=name[:-4]+time_filename+"_permission.txt"
            	text=open(Writename,'a+')
            	text.write(apkinfo.getPermissions()[0])
            	text.close()
            	print name
            print "C is clicked"
        else:
            Global.AutoCONFIG["C"] = 0  # @UndefinedVariable

        if self.checkBox_bytecode.isChecked():
            Global.AutoCONFIG["D"] = 1  # @UndefinedVariable
            print "D is clicked"
            print "aaa"
            dlg = QFileDialog(self)  # @UndefinedVariable
            write_filename = dlg.getOpenFileName(self, _fromUtf8("打开 RE(*.txt)文件"), QString(),  _fromUtf8(" *.txt 文件(*.*)"))
            print "refilename"+write_filename
            print write_filename # @UndefinedVariable
            progress=Progress()
            han=Handle(progress,write_filename)  # @UndefinedVariable
            han.run()
            progress.run()
        else:
            Global.AutoCONFIG["D"] = 0            # @UndefinedVariable
            
        if self.checkBox_smalicode.isChecked():
            Global.AutoCONFIG["E"] = 1  # @UndefinedVariable
            print "E is clicked"
        else:
            Global.AutoCONFIG["E"] = 0  # @UndefinedVariable

        if self.checkBox_callin.isChecked():
            Global.AutoCONFIG["F"] = 1  # @UndefinedVariable
            permissionsort = Permission_Sort()
            permissionsort.exec_()
            print "quanxian zuhe is clicked"
        else:
            Global.AutoCONFIG["F"] = 0  # @UndefinedVariable
 
        if self.checkBox_callout.isChecked():
            Global.AutoCONFIG["G"] = 1  # @UndefinedVariable
            dlg=QFileDialog(self)
            filename=dlg.getOpenFileNames(self, _fromUtf8("打开 APK(*.apk)文件"), QString(),  _fromUtf8(" *.apk 文件(*.apk)"))
            for name in filename:
            	self.decompile(str(name))
            print "G is clicked"
        else:
            Global.AutoCONFIG["G"] = 0  # @UndefinedVariable
            
        if self.checkBox_permission.isChecked():
            Global.AutoCONFIG["H"] = 1  # @UndefinedVariable
            print "H is clicked"
        else:
            Global.AutoCONFIG["H"] = 0            # @UndefinedVariable
            
        if self.checkBox_manifest.isChecked():
            Global.AutoCONFIG["I"] = 1  # @UndefinedVariable
            print "I is clicked"
        else:
            Global.AutoCONFIG["I"] = 0  # @UndefinedVariable
    def clear(self):
    	cmd = "rm -rf " + SYSPATH + "/temp/*"
    	return os.system(cmd)
    def dex2jar(self,filename):
    	cmd1 = SYSPATH +"/dex2jar/dex2jar.sh " + filename
    	if os.system(cmd1) !=0:
    		return 0
    	newfilename = os.path.split(filename)[-1]
    	newfilename = os.path.splitext(newfilename)[0] + "_dex2jar.jar"
    	cmd2 = "mv " + os.path.dirname(filename) + "/" + newfilename + " " + SYSPATH + "/temp/"
    	if os.system(cmd2) !=0:
    		return 0
    	if self.unzip(SYSPATH + "/temp/" + newfilename) != 0:
    		return 0
    	return 1
    def unzip(self,filename):
    	cmd = "unzip -o " + filename + " -d" + SYSPATH + "/temp/unzip"
    	return os.system(cmd)
    def decompile(self,filename):
#     	if self.clear() != 0:
#     		return 0
    	if self.dex2jar(filename) != 1:
    		return 0
    	FileName=''
    	FileName=filename.split('/')[len(filename.split('/'))-1]
    	print "FileName--->"+FileName[:-4]
    	cmd = SYSPATH + "/jad158e.linux.static/jad -o -r -sjava -d " + SYSPATH + "/temp/java/"+FileName[:-4]+" " + SYSPATH + "/temp/unzip/**/*.class"
     	Global.report_Javapath=SYSPATH + "/temp/java/"+FileName[:-4]
     	print cmd
    	if os.system(cmd) != 0:
    		return 0
    	return 1

