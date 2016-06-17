from numpy import *
import os
import string;  
import codecs;
def yunsuan():
	import numpy as np
	a=np.array([20,30,40,50])
	b=np.arange(4)
	c=a-b
	print c
	print b**2
	print b*2
	print b
	print 10*np.sin(a)
	print a<35
	A=np.array([[1,1,1],[0,1,1]])
	B=np.array([[2,0,0],[3,4,0]])
	print A*B ## zhugeyuansu xiangcheng
	#print np.dot(A,B) ## juzhen xiangcheng
	print A[1,0]
# 	C=np.array([[1,0,1,0,1],[1,1,0,1,1],[1,0,1,0,1],[1,1,0,1,0],[1,0,1,0,1]])
# 	C=np.array([[0,1,1,0],[1,0,1,0],[0,0,0,1],[0,0,1,0]])
	C=np.array([[1,1,0,0],[0,0,0,1],[0,0,1,0],[0,1,0,0]])
# 	print np.dot(C,C)
	print C
	for i in range(4):
		for j in range(4):
			for k in range(4):
				if (C[i-1,j-1] and (C[i-1,k-1] or C[j-1,k-1])):
					C[i-1,k-1]=1
	print "warshall:\n"
	print C
	print np.dot(C,C)
	D=zeros((10,10))
	E=ones((10,10))
	E[5,6]=0
	print D
	for i in range(10):
		D[0,i-1]=1
	print D
# 	print E
# 	arr=np.array([[1,1],[0,1]])
# 	iarr=linalg.inv(arr)
# 	print iarr
# 	F=linalg.inv(C)
# 	F=linalg.inv(D)
def tiqu():
	readlines=open('/home/wang/Desktop/AndroidMalwareSample/sp_ntm.gexf','r+')
	for line in readlines:
		if line.find('edge')!=-1:
			print line
			linea=line.split(" ")
			print len(linea)
			if len(linea)>1:
				print linea[3]
				for m in range(len(linea[3])):
					if linea[3][m-1].find("=")!=-1:
						t1=m+1
#def xml():
import xml.dom.minidom
from xml.dom import minidom  
# def get_tagname():
# 	doc = xml.dom.minidom.parseString(input_xml_string)
# 	for node in doc.getElementsByTagName("edge"):
# 		print "Digraph path:" +node.getAttribute("source") + "-->" + node.getAttribute("target") +"\n"
def tongji():
	count=0
	temp=0
	yuan={}
	xmldoc=minidom.parse('/home/wang/Desktop/AndroidMalwareSample/sp_ntm.gexf')
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
		G[x,y]=1
	readline=open("/home/wang/Desktop/AndroidMalwareSample/p-and-f-temp.txt",'r+')
 	for read in readline.readlines():
 		print "read is OK"
 		print read
 		reada=read.split('|')
		for j in range(len(reada)):
			yuan[j]=reada[j]
 		for node in xmldoc.getElementsByTagName("node"):
 			if node.getAttribute("label").find(yuan[0])!=-1:
 				temp=node.getAttribute("id")
 				print "Find temp"
 				print temp
 				print "G[57,47]"
 				print G[57,47]
 				print "G[57,46]"
 				print G[57,46]
 				print "------"
 				for j in range(int(count)+1):
  					if G[int(temp),j]==1:
  						print int(temp)
  						print j
  				 
  				for j in range(int(count)+1):
  					if G[int(temp),j]==1:
  						m=j
  						for k in range(int(count)+1):
  							G[int(temp),k]=G[int(temp),k] or G[j,k]
  				for jj in range(m+1):
  					jjj=m-j-1
  					if G[int(temp),jjj]==1:
  						for k in range(int(count)+1):
  							G[int(temp),k]=G[int(temp),k] or G[jjj,k]
#   						for kp in range(int(count)+1):
#   							if G[int(temp),kp]==1 and kp >j:
#   								print "-"
#   								print kp
#   								print "-"
  							
  				for j in range(int(count)+1):
  					if G[int(temp),j]==1:
  						print int(temp)
  						print j
  				 
  							

#   					for k in range(int(count)+1):
#   						if (G[int(temp),j] and (G[int(temp),k] or G[j,k])):
#   							G[int(temp),j]=1
#   							print int(temp)
#   							print j
#    				for j in range(int(count)+1):
#    					print G[int(temp),j]

#################################################################good#
#  				for m in range(int(count)+1):
#  					tempp=int(count)+1-m
#  					if G[int(temp),tempp-1]==1:
#  						print int(temp)
#  						print tempp-1
#  						print"--"
#  						for jp in range(int(count)+1):
#  							if G[tempp-1,jp]==1:
#  								print tempp-1
#  								print jp
#  								G[int(temp),jp]=1
#  								for jpp in range(int(count)+1):
#  									if G[jp,jpp]==1:
#  										print jp
#  										print jpp
#  										G[int(temp),jpp]=1
#  										for jppp in range(int(count)+1):
#  											if G[jpp,jppp]==1:
#  												print jpp
#  												print jppp
#  												G[int(temp),jppp]=1
##################################################################good# 												
#  					for jp in range(int(count)+1):
#  						if G[tempp-1,jp-1]==1:
#  							print tempp-1
#  							print jp-1
#  							for kp in range(tempp+1):
#  								if (G[tempp-1,jp-1] and (G[tempp-1,kp-1] or G[jp-1,kp-1])):
#  									G[tempp-1,jp-1]=1
# #  									print tempp-1
# #  									print jp-1
 		print "G[56,9]"
 		print G[56,9]
 		print G[56,31]
 		print G[56,32]
 		print G[56,33]
 		print G[56,34]
 		print G[56,35]
#  		for i in range(5):
#  			print "++++i"
#  			print i ## i is 0 1 2 3 4
#  				for i in range(int(count)+1):
#  					print G[temp,i]
 						
 				
# def juzhen(count,temp):
# 	M=zeros((int(count)+1,int(count)+1))
# 	for j in range(int(count)+1):
# 		for 
			
 				
def read_xml():
	from xml.dom import minidom
	import numpy as np
	count=0
	countb=0
	countt=0
	front=0
	back={}
	D={}
	T={}
# 	fsock=open('/home/wang/Desktop/AndroidMalwareSample/test.xml')
	xmldoc=minidom.parse('/home/wang/Desktop/AndroidMalwareSample/021f3cceb79e195a0d288f39900436bb27db0a15.gexf')
# 	021f3cceb79e195a0d288f39900436bb27db0a15.gexf
#  	print xmldoc.toxml()
 	for node in xmldoc.getElementsByTagName("node"):
 		if node.getAttribute("id")>int(count):
 			count=node.getAttribute("id")
 		else:
 			count=count
#  		print "-->"+node.getAttribute("id")+"---"+node.getAttribute("label")+"\n"
# 	for node in xmldoc.getElementsByTagName("edge"):
# #  		print "Digraph path:" +node.getAttribute("source") + "-->" + node.getAttribute("target") +"\n"
# 		if node.getAttribute("source")>node.getAttribute("target"):
# 			count = node.getAttribute("source")
# 		else:
# 			count = node.getAttribute("target")
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
# 	print G[3,48]
	for i in range(int(count)+1):
		for j in range(int(count)+1):
			for k in range(int(count)+1):
				if (G[i-1,j-1] and (G[i-1,k-1] or G[j-1,k-1])):
					G1[i-1,k-1]=1
	print "Second-G1-->:\n"
	print G1
	print G[30, 32]
	lou=[]
	yuan={}
	readline=open("/home/wang/Desktop/AndroidMalwareSample/p-and-f-temp.txt",'r+')
	for read in readline.readlines():
		reada=read.split('|')
		for j in range(len(reada)):
			yuan[j]=reada[j]
# 		print yuan.items()
		print yuan[1]
		for node in xmldoc.getElementsByTagName("node"):
			if node.getAttribute("label").find(yuan[0])!=-1:
				m=node.getAttribute("id")
				print "a"
# 				print reada[0]
# 				print reada[1]
# 				print len(reada)
# 				loua=reada[1]
# 				lou="Lcom/example/android/service/KitchenTimerService; sendBroadcast (Landroid/content/Intent;)V"
# 				print lou
		for node in xmldoc.getElementsByTagName("node"):
# 			print loua
			if node.getAttribute("label").find(yuan[1])!=-1:
				print "bb"
				print yuan[1]
				n=node.getAttribute("id")
				if G1[m,n]==1:
					print m
					print "-->"
					print n
					print yuan[2]
#  					print node.getAttribute("label")
# 					if node.getAttribute("label")==reada[1]:
# 						n=node.getAttribute("id")
# 						print n
# 						if G1[m,n]==1:
# 							print "This is a Malware"
# 				for i in range(int(count) + 1):
# 					if G[i, m] == 1:
# 						front = i
# 						for node in xmldoc.getElementsByTagName("node"):
# 							if node.getAttribute("label").find(reada[1])!=-1:
								
								
# 						for j in range(int(count) + 1):
# 							if G[m, j] == 1:
# 							for node in xmldoc.getElementsByTagName("node"):
# 							print "x"
# 							print front
# 							print "y"
# 							print j
# 							print "bbbb"
# 							print read
# 						for read in readline:
# 							print read
# 							print "aaaa"
# 						D[front] = j
# 						countt += 1
# 						if countt>=1:
# 							temp=countt-2
# 							D[front][temp]=j
# 						else:
# 							D[front][0] = j
# 	T[0] = ['a', 'b']
# 	T[0]=['c']
# 	print T.items()
# 	print T[0][1]
#   	for i in range(int(count)+1):
#   			for j in range(int(count)+1):
#   				if G[i,j]==1:
#   					T[j]=i
#   					for a in range(int(count)+1):
#   						if G[a,i]==1:
#   							D[a]=T[j]
  						
#   	print T.items()
#   						back=j
#   						back[countb]=j
#   						countb +=1
#   	for key in back.keys():
#   		updateDict={front:back[key]}
#   		D.update(updateDict) 
  				
#   			elif G[i,m]==1:
#   				back=m
#   				for j in range(int(count)+1):
#   					if G[i,j]==1:
#   						back=j
#   					elif G[j,i]==1:
#   						front=j
#   		updateDict={front:back}
#   		D.update(updateDict)
#   		front=0
#   		back=0
#   	print D.items()
#   	for key in D.keys():
#   		print "key"
#   		print key
#   		print "value"
#   		print D[key]
#   		if G1[key,D[key]]==1:
#   			print "key-"
#   			print key
#   			print "-->"
#   			print "value"
#   			print D[key]
#   			print "has a relation"			
#   	print G1[41,57]
#   	print G1[57,41]
#  	print G[41,57]
#  	H=np.dot(G,G)
#  	print "Juzhen chengji-->:\n"
#  	print H
#  	for i in range(int(count)):
#  		for j in range(int(count)):
#  			if H[i-1,j-1]>1:
#  				H[i-1,j-1]=1
#  	print "ZhengLi-H-->:\n"
#  	print H
				
	
	
# 	for node in xmldoc.getElementsByTagName("node"):
# 		print node.getAttribute("id")
		
	
	
# import os 
# path = "/Documents/programming/data/xml/" 
# dirList = os.listdir(path) 
# url_file=open('/Documents/programming/data/xml/test.txt','w') 
# for file in dirList:
# 	xmldoc = minidom.parse('/Documents/programming/data/xml/'+file)
# 	xml_elem = xmldoc.getElementsByTagName('webpage') 
# 	web_elem = xml_elem[0] 
# 	url = web_elem.attributes['uri'] 
# 	url_file.write(url.value + '\n') 
# 	url_file.close()			
			
if __name__=='__main__':
	tongji()
# 	read_xml()
# 	get_tagname()
# 	tiqu()
# 	yunsuan()
	
