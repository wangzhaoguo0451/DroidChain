import os.path;  
# -*- coding: utf-8 -*-  
import os;
import sys; 
import string;  
import codecs;
import re  
import logging
import time

NowTime = time.strftime('%Y-%m-%d-%H-%M-%S',time.localtime(time.time()))
Log_Filename = "./LOG/"+ NowTime + ".log"

logging.basicConfig(level=logging.DEBUG,
                    format='%(asctime)s :%(message)s',
                    datafmt='%A, %d %b %Y, %H:%M:%s',
                    filename=Log_Filename,
                    filemode='a+')



#waring
 
resultFile = open("result.file", "w+");  
DOC_TAG = "'''";  
FILE_COUNT = 0;  
FILE_EXTENSION = ".java";  
LINE_NUMBER = 0;  
COUNT_LINE_NUMBER = True;  
DEFAULT_DIR ="/root/workspace/v1.3/temp/java/com/yeelink/monitor/" #"./";  

#log time + log

#patt = r'(.*)(getSystemService)'
#patt = r'"(.*?)"'
count = 0
#patten = r"(.*)[a-zA-Z]+://(\w+(-\w+)*)(\.(\w+(-\w+)*))*(\?\S)?"#URL
#patten = r"(.*)13[0-9]|15[0|3|6|7|8|9]|18[8|9]\d{8}"#m-phone
#patten = r"(.*)((\d{3,4})|(\d{3,4}-?)|\s)?\d{7,8}"#telephone
#patten = r"(.*)\"(.*)\""
patten = r"(.*)(((2[0-4]\d)|(25[0-5])|([01]?\d\d?))\.){3}((2[0-4]\d)|(25[0-5])|([01]?\d\d?))"#IP
#patten = r"(.*)(([1-9])|([1-9]\d)|(1\d{2})|(2[0-4]\d)|(25[0-5]))(\.((\d)|([1-9]\d)|(1\d{2})|(2[0-4]\d)|(25[0-5]))){3}"#IP

 
def collection():  
    #dirpath = input("please input module directionary:");  
    #if os.path.isdir(dirpath):  
   #     walkTree(dirpath);  
    #else:  
        #print("please input a directionary path!");  
        #use default directory  
        dirpath = DEFAULT_DIR;
        logging.warning('=================================================')
        logging.warning('The dirpath is :')
        logging.warning(dirpath)
        logging.warning('=================================================')

        logging.warning('=================================================')
        logging.warning('patten is :')
        logging.warning(patten)
        logging.warning('=================================================')

        walkTree(dirpath);  
   # print "DIRECTOTY:%s FILE_EXTENSION:%s LINE_NUMBER:%s" % (dirpath, FILE_EXTENSION, LINE_NUMBER) 

  
def walkTree(dirpath):  
    #print "walkTree working!"
    os.chdir(dirpath);  
    fileExtensionLen = len(FILE_EXTENSION);  
    for subFile in os.listdir(dirpath):  
        #print(os.getcwd());  
        if os.path.isdir(subFile):  
            fullSubFile = str(os.getcwd()) + str(os.sep) + subFile;  
            #print(fullSubFile);  
            walkTree(fullSubFile);  
        elif os.path.basename(subFile)[-fileExtensionLen:] == FILE_EXTENSION:  
            collectDocument(subFile);  
    os.chdir(os.path.pardir); 
  
  
def collectDocument(subFile):  
    countDirectoryLineNumber(subFile)
    logging.warning('=================================================')
    logging.warning('FILE:')
    logging.warning(os.getcwd())
    logging.warning(os.sep)
    logging.warning(os.path.basename(subFile))
  
    appendDocToResultFile(subFile, resultFile);  
      
def countDirectoryLineNumber(subFile):  
    logging.warning(subFile)
    global LINE_NUMBER;
    global CHAR_NUMBER;  
    #use "w+" will write clear target file, so it's dangerous  
    open = codecs.open;
    newFileObject = open(subFile, "r+",'utf-8');
    allLines = newFileObject.readlines();
#   print patten
    for eachline in allLines:  
        m = re.match(patten,eachline)
#    print patten
#    print "line is :%d\t|"% (count) + eachline
        if m is not None:
#        print "|||" + m.group()
#          print "m.string:", m.string
#        eachline = eachline + color
           logging.warning(eachline)
#          print "line is :%d\t|"% (count) + eachline
    newFileObject.close()
    
   # print "\n"+"File CHAR_NUMBER!" + CHAR_NUMBER
          
      
def appendDocToResultFile(subFile, resultFile):  
    inDocArea = False;  
    for fileLine in subFile:  
        #begin with document  
        if fileLine.find(DOC_TAG) > 0:  
            inDocArea = True;  
        if inDocArea:  
            resultFile.writelines(fileLine);  
        #end of document  
        if inDocArea and fileLine.find(DOC_TAG) > 0:
            resultFile.writelines(fileLine);  
            resultFile.close();  
            break;  
if __name__ == '__main__':  
    collection();
