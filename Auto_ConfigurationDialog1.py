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
reload(sys)
sys.setdefaultencoding('utf-8')
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

import os
import urllib2
from reportlab.pdfgen import canvas
import Global
SYSTEMLINE =""
from Ui_AutoConfigurationDialog import Ui_AutoConfigurationDialog
from permission_sort import permission_sort
class Permission_Sort (QDialog,permission_sort):
	def __init__(self,parent=None):
		QDialog.__init__(self,parent)
		self.setupUi(self)
		readline=[]
		
		
		
		import Global
		
		if Global.Permission_CONFIG["1"] == 1:
			self.checkBox_cfg.setChecked(1)
		else:
			self.checkBox_cfg.setChecked(0)
		
		if Global.Permission_CONFIG["2"] == 1:
			self.checkBox_dalvik.setChecked(1)
		else:
			self.checkBox_dalvik.setChecked(0)
		
		if Global.Permission_CONFIG["3"] == 1:
			self.checkBox_javacode.setChecked(1)
		else:
			self.checkBox_javacode.setChecked(0)
		
		if Global.Permission_CONFIG["4"] == 1:
			self.checkBox_bytecode.setChecked(1)
		else:
			self.checkBox_bytecode.setChecked(0)
		
		if Global.Permission_CONFIG["5"] == 1:
			self.checkBox_smalicode.setChecked(1)
		else:
			self.checkBox_smalicode.setChecked(0)
		if Global.Permission_CONFIG["6"] == 1:
			self.checkBox_callin.setChecked(1)
		else:
			self.checkBox_callin.setChecked(0)
		
	@pyqtSignature("bool")
	def on_pushButton_ok_clicked(self, checked):
		import Global
		if self.checkBox_cfg.isChecked():
			Global.Permission_CONFIG["1"] = 1
			print "Yingjian is clicked"
			self.pipei_apk_BG(_fromUtf8("硬件层"))
		else:
			Global.Permission_CONFIG["1"] = 0
		
		if self.checkBox_dalvik.isChecked():
			Global.Permission_CONFIG["2"] = 1
			print "Yongying is clicked"
			self.pipei_apk_BG(_fromUtf8("API分析"))
		else:
			Global.Permission_CONFIG["2"] = 0
			
		if self.checkBox_javacode.isChecked():
			Global.Permission_CONFIG["3"] = 1
			print "Yinsi is clicked"

		else:
			Global.Permission_CONFIG["3"] = 0
		
		if self.checkBox_bytecode.isChecked():
			Global.Permission_CONFIG["4"] = 1
			print "XinxiPohuai is clicked"
# 			self.pipei_apk(_fromUtf8("信息破坏"))
		else:
			Global.Permission_CONFIG["4"] = 0
			
		if self.checkBox_smalicode.isChecked():
			Global.Permission_CONFIG["5"] = 1
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
			Global.Permission_CONFIG["5"] = 0
			
		if self.checkBox_callin.isChecked():
			Global.Permission_CONFIG["6"] = 1
			print "gongneng zuduan is clicked"
			self.pipei(_fromUtf8("功能阻断"))
#  			self.pipei(_fromUtf8("功能阻断"))
		else:
			Global.Permission_CONFIG["6"] = 0
			
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
#  			print "-->"+node.getAttribute("id")+"---"+node.getAttribute("label")+"\n"
			
# 		for node in xmldoc.getElementsByTagName("edge"):
# 			if node.getAttribute("source")>node.getAttribute("target"):
# 				count = node.getAttribute("source")
# 			else:
# 				count = node.getAttribute("target")
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
# 					for i in range(int(count)+1):
# 						if G1[m,i]==1:
# 							for node in xmldoc.getElementsByTagName("node"):
# 								if node.getAttribute("id")==i:
# 									print node.getAttribute("label")
# 					print "a"
# 			for node in xmldoc.getElementsByTagName("node"):
# 				if node.getAttribute("label").find(yuan[1])!=-1:
# # 					print "b"
# 					print yuan[1]
# 					n=node.getAttribute("id")
# 					if G1[m,n]==1:
# 						print m
# 						print "-->"
# 						print n
# 						print yuan[2]
##key permission 0 level 1 anction 	2how do 3 classification
			
	def result_tongji_sub(self,permissionDict,permission,key_temp,count,G,input):
				APILocationList = permissionDict[permission]
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
				return (G,int(temp))
	def result_tongji(self,permissionDict,input):
		count=0
		temp=0
		yuan={}
		write_usedpath_content=""
# 		VM = DalvikVMFormat(apkinfo.getDex())
# 		VMX = analysis.VMAnalysis(VM)
# 		CL=CLASS(apkinfo,VM,VMX)
# 		permissionDict = CL.get_permission()
		permissionContent = ""
		API_content=""
		import time
		a=time.localtime()
# 		 localtime-->time.struct_time(tm_year=2013, tm_mon=9, tm_mday=8, tm_hour=21, tm_min=7, tm_sec=30, tm_wday=6, tm_yday=251, tm_isdst=0)
# 		print "localtime-->"+str(a.tm_year)
# 		write_filename="/home/wang/Desktop/AndroidMalwareSample/aaaaa.txt"
# 		print write_filename
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
		counta=1
		countb=1
		countc=1
		key_d={}
 		for permission in permissionDict.keys():
 			for key in xinxi_qiequ_yuan.keys():
 				for keyy in xinxi_xie_loudian.keys():
 					if permission.find(key)!=-1:
 						G1,temp=self.result_tongji_sub(permissionDict,permission,key,count,G,input)
 						for m1 in range(int(count)+1):
 							if G1[int(temp),m1]==1:
 								d2d.setdefault(key,{})[counta]=m1
 								counta +=1
#  								print "yuan"
#  								print d2d[key]
 					counta=1
 					if permission.find(keyy)!=-1:
 						G2,temp=self.result_tongji_sub(permissionDict,permission,keyy,count,G,input)
 						for m1 in range(int(count)+1):
 							if G2[int(temp),m1]==1:
 								d2d.setdefault(keyy,{})[countb]=m1
 								countb +=1
 					countb=1
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
 								if d2d[key][i+1]==d2d[keyy][j+1]:
#  									print "yuan is "+key
#  									print "lou is "+keyy
 									countc +=1
 									updateDict={key:keyy}
 									key_d.update(updateDict)
#  									for key_d_temp in key_d.keys():
#  										if key_d_temp.find(key)!=-1:# & key_d[key_d_temp].find(keyy)!=-1):
#  											print "key,keyy is same"
#  										else:
#  											print "keykeyy"
#  											updateDict={key:keyy}
#  											key_d.update(updateDict) 
 												
 									
#  		print countc
#  		print key_d.items()
 		return (key_d,d2d,countc)
 									
#  							print d2d[key][i+1]
#  						for j in range(len(d2d[keyy])):
#  							print d2d[keyy][j+1]
#  								if d2d[key][i] in d2d[keyy][j]:
#  									print "yuan is "+key
#  									print "lou is "+keyy 
 						
 				
#  								print "lou"
#  								print d2d[keyy]						
# 				return  d2
# 			else:
# 				return None
								
# 								updateDict={text_ss[j]:count}
# 							d.update(updateDict)
# 		for key in xinxi_qiequ_yuan.keys():
# 			print key
# 		for temp in yuan_temp_s:
# 			yuan_temp_ss=temp.split('|')
# # 			print yuan_temp_ss[len(yuan_temp_ss)-1]##behavior
# # 			print "aaabbb"
# 			for j in range(len(yuan_temp_ss)):
# 				yuan +=yuan_temp_ss[j]
# 		print yuan
# 			print yuan_temp_ss[0]
# 			print yuan_temp_ss[1]	
# 		for permission in permissionDict.keys():
# 			APILocationList = permissionDict[permission]
# 			permissionContent += "*******************************"
# 			permissionContent += "Permission: "
# 			permissionContent += permission
# 			permissionContent += "*******************************"
# 			permissionContent += "\n\n"
# 			write_usedpath_content +="\n"
# 			write_usedpath_content +=permission
# 			write_usedpath_content +="\n"
# 			API_content +=permission
# 			API_content +="\n"
# 			print permission
# 			for api in APILocationList:
# 				li = api.split("  --->  ")
# 				APIName = li[1]
# 				methodName = li[0][:li[0].index(" (@")]
# 				where = li[0][li[0].rindex("("):]
# 				permissionContent += "API: " + APIName + "\n"
# 				permissionContent += "Method: " + methodName + "\n"
# 				permissionContent += "Where: " + where + "\n\n"
# 				API_content +=APIName
# 				API_content +="|"
#  				xmldoc=minidom.parse(input)
#  				for node in xmldoc.getElementsByTagName("node"):
#  					if node.getAttribute("label").find(methodName)!=-1:
#  						temp=node.getAttribute("id")
#  						print "Find temp"
#  						print temp
#  						print node.getAttribute("label")
#  						for j in range(int(count)+1):
#  							if G[int(temp),j]==1:
#  								m=j
#  								for k in range(int(count)+1):
#  									G[int(temp),k]=G[int(temp),k] or G[j,k]
#  						for jj in range(int(count)+1):
#  							jjj=int(count)-jj
#  							if G[int(temp),jjj]==1:
#  								for k in range(int(count)+1):
#  									G[int(temp),k]=G[int(temp),k] or G[jjj,k]
#  				for m1 in range(int(count)+1):
#  					if G[int(temp),m1]==1:
#  						write_usedpath_content +=str(m1)+" "
 						
 			

##############################
#  		write_usedpath=open(input[:-4]+"txt",'a+')					
#  		write_usedpath.write(write_usedpath_content)
############################################
# 		write_api_content =open(input[:-5]+"_api_content"+".txt",'a+')
# 		write_api_content.write(API_content)
# 		write_api_content.close()
# 		API_content=""
		
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
					
# 					for jj in range(m+1):
# 						jjj=m-j-1
# 						print "jjj"
# 						print jjj
# 						if G[int(temp),jjj]==1:
# 							for k in range(int(count)+1):
# 								G[int(temp),k]=G[int(temp),k] or G[jjj,k]
# 							for node in  xmldoc.getElementsByTagName("node"):
# 								if node.getAttribute("id")==j:
# 									print node.getAttribute("label")
# 					for j in range(int(count)+1):
# 						if G[int(temp),j]==1:
# 							print int(temp)
# 							print j
  				 
 

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
		global SYSTEMLINE
		dirpath = DEFAULT_DIR
		SYSTEMLINE += "     FILE:%s%s%s" % (str(os.getcwd()), str(os.sep), str(os.path.basename(dirpath)));
		return self.walkTree(dirpath,FILE_EXTENSION,patten);
	def walkTree(self,dirpath,FILE_EXTENSION,patten):
		global SYSTEMLINE
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
		global SYSTEMLINE
		reportline=""
		newFileObject = open(subFile, "r+",'utf-8');
		allLines = newFileObject.readlines();
		count = 0
		for eachline in allLines:			
			m = re.search(patten,eachline)
			if m is not None:
				SYSTEMLINE += "  "+subFile +"\n"
				SYSTEMLINE += "     Line:" + str(count) + "     :"+str(m.group(0)) +"\n"
				count += 1
		newFileObject.close()
		return reportline
		
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
		global SYSTEMLINE
		if Global.Permission_CONFIG["1"]==1:
			dlg = QFileDialog(self)  # @UndefinedVariable
			zifilename = dlg.getOpenFileName(self, _fromUtf8("请打开")+function_name+_fromUtf8("敏感权限样本文件"), QString(),  _fromUtf8(" *.txt 文件(*.txt)"))
			texts=open(zifilename,'r+')
			text_s=texts.readlines()
#  		if Global.Permission_CONFIG["2"]==1:
#  			dlg = QFileDialog(self)  # @UndefinedVariable
#  			zifilename = dlg.getOpenFileName(self, _fromUtf8("请打开")+_fromUtf8("API分析样本"), QString(),  _fromUtf8(" *.txt 文件(*.txt)"))
 # 			readline=open(zifilename,'r+')
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
				report += "*******************************"
				report += "report-permission_contained: "
				report += "*******************************"
				report += "\n\n"
				d={}
				con=0
				count=0
				sum =100
				if Global.Permission_CONFIG["1"]==1:
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
					java=AutoConfigurationDialog()
					java.decompile(str(name))
					DOC_TAG = "'''";
					FILE_COUNT = 0;
					FILE_EXTENSION = ".java";
					LINE_NUMBER = 0;
					COUNT_LINE_NUMBER = True;
					DEFAULT_DIR =Global.report_Javapath+"/"
					report += "\n\n*******************************"
					report += "IP&URL_contained: "
					report += "*******************************\n\n"
					patten1 = r"(((2[0-4]\d)|(25[0-5])|([01]?\d\d?))\.){3}((2[0-4]\d)|(25[0-5])|([01]?\d\d?))"#IP
					report +="IP-contained:"+"\n"
					SYSTEMLINE = ""
					str(self.collection(DEFAULT_DIR, FILE_EXTENSION, patten1))
					report +=SYSTEMLINE
					report +="\n"
					patten2 = r"[a-zA-Z]+://(\w+(-\w+)*)(\.(\w+(-\w+)*))*(\?\S)?"#URL
					report +="URL-contained:"+"\n"
					SYSTEMLINE = ""
					str(self.collection(DEFAULT_DIR, FILE_EXTENSION, patten2))
					report +=SYSTEMLINE
				if Global.Permission_CONFIG["2"]==1:
 					  patha=SYSPATH+"/androguard/androgexf.py"+" -i "+name+" -o "
 					  pathb=name[:-3]+"gexf"
 					  cmd=patha+pathb
 # 					  print cmd
 					  os.system(unicode(cmd))
					  print pathb
 					  try:
 					  	VM = DalvikVMFormat(apkinfo.getDex())
 					  	VMX = analysis.VMAnalysis(VM)
 					  	CL=CLASS(apkinfo,VM,VMX)
 					  	permissionDict = CL.get_permission()
 					  	key_d,d2d,key_count=self.result_tongji(permissionDict, str(pathb))
 					  	if isinstance(d2d,dict):
 					  		for x in range(len(d2d)):
 					  			print "%s :%s"%(d2d.keys()[x],d2d[d2d.keys()[x]])
 					  	print key_d.items()
 					  	print key_count
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
        
        if Global.AutoCONFIG["SP"] == 1:
            self.checkBox_cfg.setChecked(1)
        else:
            self.checkBox_cfg.setChecked(0)
            
        if Global.AutoCONFIG["B"] == 1:
            self.checkBox_dalvik.setChecked(1)
        else:
            self.checkBox_dalvik.setChecked(0)

        if Global.AutoCONFIG["C"] == 1:
            self.checkBox_javacode.setChecked(1)
        else:
            self.checkBox_javacode.setChecked(0)


        if Global.AutoCONFIG["D"] == 1:
            self.checkBox_bytecode.setChecked(1)
        else:
            self.checkBox_bytecode.setChecked(0)
            
            
        if Global.AutoCONFIG["E"] == 1:
            self.checkBox_smalicode.setChecked(1)
        else:
            self.checkBox_smalicode.setChecked(0)


        if Global.AutoCONFIG["F"] == 1:
            self.checkBox_callin.setChecked(1)
        else:
            self.checkBox_callin.setChecked(0)
 
 
        if Global.AutoCONFIG["G"] == 1:
            self.checkBox_callout.setChecked(1)
        else:
            self.checkBox_callout.setChecked(0)
            
        if Global.AutoCONFIG["H"] == 1:
            self.checkBox_permission.setChecked(1)
        else:
            self.checkBox_permission.setChecked(0)
            
            
        if Global.AutoCONFIG["I"] == 1:
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
            Global.AutoCONFIG["SP"] = 1
            print "Gexf is clicked"
        else:
            Global.AutoCONFIG["SP"] = 0
         
            
        if self.checkBox_dalvik.isChecked():
            Global.AutoCONFIG["B"] = 1
            print "py.py is clicked"
            dlg = QFileDialog(self)  # @UndefinedVariable
            Global.refilename = dlg.getOpenFileName(self, _fromUtf8("打开 RE(*.txt)文件"), QString(),  _fromUtf8(" *.txt 文件(*.*)"))
            print "refilename"+Global.refilename
            #filetype = filename.split('.', 1)[1]
        else:
            Global.AutoCONFIG["B"] = 0
            
        if self.checkBox_javacode.isChecked():
            Global.AutoCONFIG["C"] = 1
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
            Global.AutoCONFIG["C"] = 0

        if self.checkBox_bytecode.isChecked():
            Global.AutoCONFIG["D"] = 1
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
            Global.AutoCONFIG["D"] = 0            
            
        if self.checkBox_smalicode.isChecked():
            Global.AutoCONFIG["E"] = 1
            print "E is clicked"
        else:
            Global.AutoCONFIG["E"] = 0

        if self.checkBox_callin.isChecked():
            Global.AutoCONFIG["F"] = 1
            permissionsort = Permission_Sort()
            permissionsort.exec_()
            print "quanxian zuhe is clicked"
        else:
            Global.AutoCONFIG["F"] = 0 
 
        if self.checkBox_callout.isChecked():
            Global.AutoCONFIG["G"] = 1
            dlg=QFileDialog(self)
            filename=dlg.getOpenFileNames(self, _fromUtf8("打开 APK(*.apk)文件"), QString(),  _fromUtf8(" *.apk 文件(*.apk)"))
            for name in filename:
            	self.decompile(str(name))
            print "G is clicked"
        else:
            Global.AutoCONFIG["G"] = 0
            
        if self.checkBox_permission.isChecked():
            Global.AutoCONFIG["H"] = 1
            print "H is clicked"
        else:
            Global.AutoCONFIG["H"] = 0            
            
        if self.checkBox_manifest.isChecked():
            Global.AutoCONFIG["I"] = 1
            print "I is clicked"
        else:
            Global.AutoCONFIG["I"] = 0
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

