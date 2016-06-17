from APKInfo import *
import re
import Global
from PyQt4.QtGui import *
from PyQt4.QtCore import *
from PyQt4 import QtCore, QtGui
from PyQt4.QtGui import *
from PyQt4.QtCore import *
from PyQt4 import QtCore, QtGui
from progress import Progress
from handling import Handle
import sys
reload(sys)
sys.setdefaultencoding('utf-8')

class Permission(QThread):
	progress=None
	addr_file=None
	
	def __init__(self,progress,filename):
		super(Permission, self).__init__()
		addr_file=''
		PATH=''
 		self.progress=progress
 		self.progress.step=10
 		self.filename=filename
 		self.file = APK(filename)
 		self.write_filename=""
 		
	def run(self):
		    if self.progress.step <= 10:
		    	self.progress.step=10
		    	print "file_name"+self.filename
		    	print "self.file.getPermission-->"
		    	print self.file.getPermissions()[0]
		    	print "The numbers of the amount of the permissions is"
		    	print self.file.getPermissions()[1]
		    	permissions=self.file.getPermissions()[0]
  		    	permissions=permissions.split("\n")
		    	numbers=self.file.getPermissions()[1]		    	
		    	new_per=[]
		    	num=0
		    	import time
		    	a=time.localtime()
		    	print "localtime-->"+str(a.tm_year)
		    	time_filename="_"+str(a.tm_year)+"-"+str(a.tm_mon)+"-"+str(a.tm_mday)+"_"+str(a.tm_hour)+"-"+str(a.tm_min)+"-"+str(a.tm_sec)+".txt"
		    	print time_filename
 		    	for i in range(numbers):
#  		    		print permissions[i]
 		    		for permissions[i] in permissions:
 		    			if permissions[i] not in new_per:
 		    				new_per.append(permissions[i]) 		    				
#  		    	print len(new_per)
#  		    	for a in new_per:
#   		    		print "New-->"+a
#  		    		for i in range(self.file.getPermissions()[1]):
#  		    			print "per-->"+permissions[i]
#  		    			if a==permissions[i]:
#  		    				num=num+1
#  		    				print num
#  		    		print "aaa-->"+a
#  		    		num=0
#  		    		print num
#  		    	print "hello"
 		    	aa=self.filename.split("/")
 		    	write_filename="/"
 		    	for temp in aa:
 		    		if temp!="" and temp[-3:]!="apk":
 		    			write_filename=write_filename+temp+"/"
 		    	self.write_filename=self.filename+time_filename#"temp.txt"
 		    	print self.write_filename
 		    	Global.write_filename=self.write_filename
 		    	text=open(self.write_filename,'a+')
 		    	text.write(self.file.getPermissions()[0])
 		    	text.write("\n")
 		    	text.close() 		    	
#  		    	file_object = open('thefile.txt', 'w')
# file_object.write(all_the_text)
# file_object.close( )
#  		    	
#   		    	text = open(self.addr_file,'r+')
#  		    	result = list()
#  		    	PATH=Global.refilename  # @UndefinedVariable
#  		    	patfile = open(PATH).read()#r'/home/wang/Desktop/AndroidMalwareSample/1.txt').read()
#  		    	patsub = patfile.split("|");
#  		    	patt = ''
#  		    	patten =''
#  		    	for eachpat in patsub:
#  		    		patt = patt + eachpat+"|"
#  		    		patten = "(.*)" + "(" + patt[:-2] + ")" 
#  		    	color = '<viz:color r="255" g="0" b="0"/>\n'
#  		    	allLines = text.readlines();
#  		    	
#  		    	count = 0
#  		    	text.close()
#  		    	print patten
#  		    	
#  		    	for eachline in allLines:
#  		    		m = re.match(patten,eachline)
#  		    		if m is not None:
#  		    			print "m.re:",m.re
#  		    			print "line is :%d\t|"% (count) + eachline
#  		    			allLines.insert((count+1),color)
#  		    			s = ''.join(allLines)
#  		    			fp = file(self.addr_file, 'w')
#  		    			fp.write(s)
#  		    			fp.close()
#  		    		count+= 1;	
 		    				
class item:
	def __init__(self):
		self.name=''
		self.size=1024
		self.list=[]