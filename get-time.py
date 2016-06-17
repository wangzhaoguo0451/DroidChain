#!/usr/bin/python
# -*- coding: utf-8 -*-
#  import subprocess
#  import datetime
from reportlab.pdfgen import canvas
from reportlab.lib.units import inch
from reportlab.lib.pagesizes import letter #
#canvas = canvas.Canvas('myfile.pdf', pagesize=letter)
import time
from PyQt4.QtGui import *
from PyQt4.QtCore import *
from PyQt4 import QtCore, QtGui
from reportlab.lib.enums import TA_JUSTIFY
from reportlab.lib.pagesizes import letter
from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer, Image
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
from reportlab.lib.units import inch
# from reportlab.pdfbase import pdfmetrics
# from reportlab.pdfbase.ttfonts import TTFont
# pdfmetrics.registerFont(TTFont('msyh','path_to_your_font/msyh.ttf'))
# from sx.pisa3 import pisa_default
# pisa_default.DEFAULT_FONT["helvetica"]="msyh"

import os
import urllib2
# from reportlab.lib.pagesizes import letter
# from reportlab.lib.units import inch
from reportlab.pdfgen import canvas
# -*- coding: utf-8 -*- 
import sx.pisa3 as pisa
def txttopdf():
	data= open('/home/wang/Desktop/AndroidMalwareSample/ze_report.txt').read()
	result = file('/home/wang/Desktop/helloworld.pdf', 'wb')
	pdf = pisa.CreatePDF(data, result)
	result.close()
	pisa.startViewer('/home/wang/Desktop/helloworld.pdf') 
# filename = './python-log.png'

def run_shell(command, mayFreeze=False):
	def check_retcode(retcode, cmd):
		if 0 != retcode:
			print >> sys.stderr, 'err executing ' + cmd + ':', retcode
			sys.exit(retcode)

	def read_close(f):
		f.seek(0)
		d = f.read()
		f.close()
		return d
	
	#print >> sys.stderr, '-- Executing', command
	if mayFreeze:
		tempout, temperr = tempfile.TemporaryFile(), tempfile.TemporaryFile()#open(os.devnull, 'w')
		p = subprocess.Popen(command, stdout=tempout, stderr=temperr)
		p.wait()
		output, errout = read_close(tempout), read_close(temperr)
	else:
		p = subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
		output = p.stdout.read()
		p.wait()
		errout = p.stderr.read()
		p.stdout.close()
		p.stderr.close()
	
	#check_retcode(p.returncode, command)
	return (output.strip(), errout.strip())

#z7 is the full path to 7z.exe
#at times you have to encode the command into GBK/UTF8
# run_shell(u'{0} -y -o"{1}" {2} x "{3}"'.format(z7, tempdir, icon, apk))
# shutil.copy(u'{0}/{1}'.format(tempdir, os.path.basename(icon)), dst_path)

def get_python_image():
	response = urllib2.urlopen(
            'http://www.python.org/community/logos/python-logo.png')
#     """ Get a python logo image for this example """
#     if not os.path.exists(filename):
#         response = urllib2.urlopen(
#             'http://www.python.org/community/logos/python-logo.png')
#     else:
#         f = open(filename, 'w')
#         f.write(response.read())
#         f.close()
        
def draw():
	get_python_image()
	c = canvas.Canvas('imageabs.pdf', pagesize=letter)
	width, height = letter
	c.drawImage(filename, inch, height - 2 * inch) # Who needs consistency?
	c.showPage()
	c.save()

class RotatedImage(Image):
	def wrap(self,availWidth,availHeight):
		h, w = Image.wrap(self,availHeight,availWidth)
		return w, h
	def draw(self):
		self.canv.rotate(90)
		Image.draw(self)
		I = RotatedImage('../images/replogo.gif')
		I.hAlign = 'CENTER'
def create_pdf():
	texts=open('/home/wang/Desktop/AndroidMalwareSample/ze_report.txt','r+')
 	text_s=texts.readlines()
 	output="/home/wang/Desktop/helloworld.pdf"
 	c = canvas.Canvas(output)
 	textobject = c.beginText()
 	textobject.setTextOrigin(inch,11*inch)
 	for line in text_s:
 		textobject.textLine(line.strip())
 	c.drawText(textobject)
 	c.showPage()
 	c.save()
 	
# class handling_txt(QDialog):
# 	def __init__(self,parent=None):
# 		QDialog.__init__(self,parent)
# 		self.setupUi(self)
# 		self.handle_txt_quanxianzuhe()
# 		
# 	def handle_txt_quanxianzuhe():
# 		dlgs = QFileDialog(self)
# 		Master_filename = dlgs.getOpenFileNames(self, _fromUtf8("请打开（可以选择多个文件）APK文件"), QString(),  _fromUtf8("APK 文件 Odex 文件 Gexf 文件(*.*)"))
# 		for name in Master_filename:
# 			if(name[-3:0]=="txt"):
# 				print "name[-3:0]"+name[-3:0]
# 	texts=open(zifilename,'r+')
# 	text_s=texts.readlines()

if __name__ == '__main__':
	handle=handling_txt()
	handle.handle_txt_quanxianzuhe()
#  	txttopdf()
#   	create_pdf()
#     draw()
#     print "OK"
 
# doc = SimpleDocTemplate("form_letter.pdf",pagesize=letter,
#                         rightMargin=72,leftMargin=72,
#                         topMargin=72,bottomMargin=18)
# Story=[]
# logo = "python_logo.png"
# magName = "Pythonista"
# issueNum = 12
# subPrice = "99.00"
# limitedDate = "03/05/2010"
# freeGift = "tin foil hat"
#  
# formatted_time = time.ctime()
# full_name = "Mike Driscoll"
# address_parts = ["411 State St.", "Marshalltown, IA 50158"]
#  
# im = Image(logo, 2*inch, 2*inch)
# Story.append(im)
#  
# styles=getSampleStyleSheet()
# styles.add(ParagraphStyle(name='Justify', alignment=TA_JUSTIFY))
# ptext = '<font size=12>%s</font>' % formatted_time
#  
# Story.append(Paragraph(ptext, styles["Normal"]))
# Story.append(Spacer(1, 12))
#  
# # Create return address
# ptext = '<font size=12>%s</font>' % full_name
# Story.append(Paragraph(ptext, styles["Normal"]))
# for part in address_parts:
#     ptext = '<font size=12>%s</font>' % part.strip()
#     Story.append(Paragraph(ptext, styles["Normal"]))
#  
# Story.append(Spacer(1, 12))
# ptext = '<font size=12>Dear %s:</font>' % full_name.split()[0].strip()
# Story.append(Paragraph(ptext, styles["Normal"]))
# Story.append(Spacer(1, 12))
#  
# ptext = '<font size=12>We would like to welcome you to our subscriber base for %s Magazine! \
#         You will receive %s issues at the excellent introductory price of $%s. Please respond by\
#         %s to start receiving your subscription and get the following free gift: %s.</font>' % (magName,
#                                                                                                 issueNum,
#                                                                                                 subPrice,
#                                                                                                 limitedDate,
#                                                                                                 freeGift)
# Story.append(Paragraph(ptext, styles["Justify"]))
# Story.append(Spacer(1, 12))
#  
# ptext = '<font size=12>Thank you very much and we look forward to serving you.</font>'
# Story.append(Paragraph(ptext, styles["Justify"]))
# Story.append(Spacer(1, 12))
# ptext = '<font size=12>Sincerely,</font>'
# Story.append(Paragraph(ptext, styles["Normal"]))
# Story.append(Spacer(1, 48))
# ptext = '<font size=12>Ima Sucker</font>'
# Story.append(Paragraph(ptext, styles["Normal"]))
# Story.append(Spacer(1, 12))
# doc.build(Story)



# from reportlab.pdfgen import canvas 
# def hello():
# 	   c = canvas.Canvas("/home/wang/Desktop/helloworld.pdf")
# 	   line="a"
# # 	   c.drawText(line)
# 	   c.drawString(500,100,line)
# 	   c.showPage()
# 	   c.save()
# 
# if __name__=='__main__':
# 	hello()
# 	print "OK"
# 
# diskreport.py
# 
# #!/usr/bin/env python
# 
# import subprocess
# 
# import datetime
# 
# from reportlab.pdfgen import canvas
# 
# from reportlab.lib.units import inch
# 
# def disk_report():
# 
#         p = subprocess.Popen("df -h", shell=True, stdout=subprocess.PIPE)
# 
# #      print p.stdout.readlines()
# 
#         return p.stdout.readlines()
# 
# def create_pdf(input, output="disk_report.pdf"):
# 
#         now = datetime.datetime.today()
# 
#         date = now.strftime("%h %d %Y %H:%M:%S")
# 
#         c = canvas.Canvas(output)
# 
#         textobject = c.beginText()
# 
#         textobject.setTextOrigin(inch, 11*inch)
# 
#         textobject.textLines('''Disk Capcity Report: %s''' %date)
# 
#         for line in input:
# 
#                 textobject.textLine(line.strip())
# 
#         c.drawText(textobject)
# 
#         c.showPage()
# 
#         c.save()
# 
# report = disk_report()
# 
# create_pdf(report)


# #!/usr/bin/python
# #coding=gbk
# import datetime
# import subprocess
# import codecs
# import reportlab.pdfbase.ttfonts
# reportlab.pdfbase.pdfmetrics.
# (reportlab.pdfbase.ttfonts.TTFont('song', '/usr/share/fonts/truetype/wqy/wqy-zenhei.ttc'))
# import reportlab.lib.fonts
# from reportlab.pdfgen import canvas
# from reportlab.lib.units import inch
# def disk_report():
#  p = subprocess.Popen("df -h ",shell=True,stdout=subprocess.PIPE)
#  return p.stdout.readlines()
#  
# 
# def create_pdf(input,output="disk.pdf"):
#  now = datetime.datetime.today()
#  date = now.strftime("%h %d %Y %H:%M:%S")
#  c = canvas.Canvas(output)
#  c.setFont('song',10)
#  textobject = c.beginText()
#  textobject.setTextOrigin(inch,11*inch)
#  textobject.textLines('''Disk Capacity Report: %s ''' % date )
#  for line in input:
#   line=line.decode("gbk")
#   textobject.textLine(line.strip())
#  c.drawText(textobject)
#  c.showPage()
#  c.save()
# report = disk_report()
# 
# create_pdf(report)
