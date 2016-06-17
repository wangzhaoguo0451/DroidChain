import re
import Global
from PyQt4.QtGui import *
from PyQt4.QtCore import *
from PyQt4 import QtCore, QtGui

class Autore(QThread):
	progress=None
	addr_file=None
	
	def __init__(self,progress,filename):
		super(Autore, self).__init__()
		addr_file=''
		PATH=''
 		self.progress=progress
 		self.progress.step=10
 		self.addr_file=filename
		
	def run(self):
		    if self.progress.step <= 10:
		    	self.progress.step=10
# 		    	addr_file=Global.filename  # @UndefinedVariable
		    	text = open(self.addr_file,'r+')
		    	result = list()
		    	PATH=Global.refilename  # @UndefinedVariable
		    	patfile = open(PATH).read()#r'/home/wang/Desktop/AndroidMalwareSample/1.txt').read()
		    	patsub = patfile.split("|");
		    	patt = ''
		    	patten =''
		    	for eachpat in patsub:
		    		patt = patt + eachpat+"|"
		    		patten = "(.*)" + "(" + patt[:-2] + ")" 
		    	color = '<viz:color r="255" g="0" b="0"/>\n'
		    	allLines = text.readlines();
		    	
		    	count = 0
		    	text.close()
		    	print patten
		    	
		    	for eachline in allLines:
		    		m = re.match(patten,eachline)
		    		if m is not None:
		    			print "m.re:",m.re
		    			print "line is :%d\t|"% (count) + eachline
		    			allLines.insert((count+1),color)
		    			s = ''.join(allLines)
		    			fp = file(self.addr_file, 'w')
		    			fp.write(s)
		    			fp.close()
		    		count+= 1;