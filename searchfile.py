import os.path;  
# -*- coding: utf-8 -*-  
import os;
import sys; 
import string;  
import codecs;  
  
resultFile = open("result.file", "w+");  
DOC_TAG = "'''";  
FILE_COUNT = 0;  
FILE_EXTENSION = ".apk";  
LINE_NUMBER = 0;  
COUNT_LINE_NUMBER = True;  
DEFAULT_DIR = "/home/wang/Desktop/instanse";  
  
def collection():  
    #dirpath = input("please input module directionary:");  
    #if os.path.isdir(dirpath):  
   #     walkTree(dirpath);  
    #else:  
        #print("please input a directionary path!");  
        #use default directory  
        dirpath = DEFAULT_DIR;  
        walkTree(dirpath);  
   # print "DIRECTOTY:%s FILE_EXTENSION:%s LINE_NUMBER:%s" % (dirpath, FILE_EXTENSION, LINE_NUMBER) 

  
def walkTree(dirpath):  
    #print "walkTree working!"
    content=''
    con=''
    co=''
    os.chdir(dirpath);  
    fileExtensionLen = len(FILE_EXTENSION);  
    for subFile in os.listdir(dirpath):  
        #print(os.getcwd());  
        if os.path.isdir(subFile):  
        	print "lalalalalalal"
        	fullSubFile = str(os.getcwd()) + str(os.sep) + subFile;  
        	print fullSubFile  
        	walkTree(fullSubFile);  
        elif os.path.basename(subFile)[-fileExtensionLen:] == FILE_EXTENSION:  
#             collectDocument(subFile);
            content=content+"\n"+subFile  
    #os.chdir(os.path.pardir); 
    #resultFile.writelines("\n" + "\n" + "\n" + "Total Number of Regex_files:" + str(LINE_NUMBER));   
    print "content->"+content
    print "content[1]->"+content[1]
    con=content.split("\n")
    for c in con:
    	print "c->"+c
   # print subFile;
def collectDocument(subFile):  
   # countDirectoryLineNumber(subFile)
   # subfile+=subfile
   # content=''
    #if subFile!='' 
    print "subfile-> "+subFile;
   # resultFile.writelines("\n" + "FILE:  %s%s%s" % (str(os.getcwd()), str(os.sep), str(os.path.basename(subFile))));
   # resultFile.writelines("\n" + "-------------------------------------------------------------------------------");   
    
   # appendDocToResultFile(subFile, resultFile);  
      
#def countDirectoryLineNumber(subFile):  
	
	
#        print subFile;
#        global LINE_NUMBER;
#        global CHAR_NUMBER;  
#        #use "w+" will write clear target file, so it's dangerous  
#        open = codecs.open;
#        newFileObject = open(subFile, "r+");
   
       #singleFileLineNumber = len(newFileObject.readlines());  
       #resultFile.writelines("\n" + "Number of Regex:" + str(singleFileLineNumber));  
       #LINE_NUMBER += singleFileLineNumber;
       
       #count file char number
  #     newFileObject1 = open(subFile, "r+");
   #    while True:
   #        line = newFileObject1.readline();
           #print 'line number is %s' % line;
    #       singleFileCharNumber = len(line);
   #        #print 'line number is %d' % len(line);
   #        if len(line) == 0:
  #             break;
           #resultFile.writelines("\n" +"\t" + "|" +"Regex :" + line);
           #resultFile.writelines("\t" + "|"+"Number of Regex_file_Char:" + str(singleFileCharNumber)+"\n" );
   
       
       #print "\n"+"File CHAR_NUMBER!" + CHAR_NUMBER
          
      
def appendDocToResultFile(subFile, resultFile): 
	print "appendDOC" 
#     inDocArea = False;  
#     for fileLine in subFile:  
#         #begin with document  
#         if fileLine.find(DOC_TAG) > 0:  
#             inDocArea = True;  
#         if inDocArea:  
#             resultFile.writelines(fileLine);  
#         #end of document  
#         if inDocArea and fileLine.find(DOC_TAG) > 0:
#             resultFile.writelines(fileLine);  
#             resultFile.close();  
#             break;  
if __name__ == '__main__':  
    collection();