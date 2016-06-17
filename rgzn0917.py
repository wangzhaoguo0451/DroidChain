import re
import os.path;  
# -*- coding: utf-8 -*-  
import os;
import sys; 
import string;  
import codecs;

def module():
	temp='' 
	i=0
	j=2
	t=0
	b=''
	a = raw_input("Please input a string:\n")
	print a
	flag=1 
# 	while i<(len(a)-2):
	while True:
		j=i+2
		if(a[i:j]=="aa"):
# 			a[i:len(a)]=a[i+1:len(a)]
			a=a[0:i-1]+a[i+1:]
			print "aa->"+a
		if(a[i:j]=="bb"):
# 			a[i:len(a)]=a[i+1:len(a)]
			a=a[0:i-1]+a[i+1:]
			print "bb->"+a
		if(a[i:j]=="ba"):
			a=a[0:i]+a[i+1:j]+a[i:i+1]+a[j:]
			print "cc->"+a
# 		if a[i:j]!="aa":
# 			flag1=1
# 		if a[i:j]!="aa":
# 			flag2=1
# 		if a[i:j]!="aa":
# 			flag3=1
		i+=1
  		if len(a)<=2:
  			break
#   		if flag1==1 or flag2==1 or flag3==1:
#   			break
	i=0
	while i<len(a):
		j=i+1
		if(a[i:j]=="a"):
			a=a[0:i]+"A"+a[j:]
			print "a->"+a
# 			a[i:j]=['A']
		if(a[i:j]=="b"):
			a=a[0:i]+"B"+a[j:]
			print "b->"+a
		i+=1
	print len(a[0:2])
	print a
# 	if a[0:1]=="a":
# 		print "This is a"
# 	if a[0]

if __name__ == '__main__': 
	module();