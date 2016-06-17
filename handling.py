from APKInfo import *
import re
import Global
from PyQt4.QtGui import *
from PyQt4.QtCore import *
from PyQt4 import QtCore, QtGui

class Handle(QThread):
	progress=None
	addr_file=None
	
	def __init__(self,progress,filename):
		super(Handle, self).__init__()
 		self.progress=progress
 		self.progress.step=10
 		self.filename=filename
 		
	def run(self):
		    if self.progress.step <= 10:
		    	self.progress.step=10
		    	D={}
		    	d={}
		    	count=1
 		    	text=open(self.filename)
  		    	print "readinginging"
#   		    	print text.read()
 		    	temp=text.read()
 		    	f=open(self.filename,'r')
 		    	for  line in open(self.filename):
 		    		line=f.readline()
#  		    		print "bre"
 		    		updateDict={line:count}
  		    		d.update(updateDict)
#   		    		print "aft"
#   		    	print d.items()
  		    	f.close()
#   		    	d['android.permission.INTERNET\n']=2
  		    	f=open(self.filename,'r')
#   		    	num=0
  		    	for  line in open(self.filename):
  		    		line=f.readline()
  		    		if d.has_key(line):
#   		    			print "OK"
#   		    			num+=1
  		    			d[line]+=1
#   		    		print line
  		    	f.close()
  		    	print "start"
  		    	print d.items()
#   		    	tempp=temp.split("/n")
#   		    	updateDict={tempp:0}
#  		    	D.update(updateDict)
#   		    	for aa in tempp:
#   		    		updateDict={aa:0}
#   		    		D.update(updateDict)
#   		    		print D.items()
#  		    		print aa
 		    	#	count=0
  		    		#for rest in tempp:
  		    		#	if rest==aa:
  		    			#	count+=1
 		    		     #   print "zaochen"
#          		    		print aa 
 		    		       # print count  		    	
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
 		    				
