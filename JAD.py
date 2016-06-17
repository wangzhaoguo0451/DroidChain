import os
import sys
import zipfile

from startQT import SYSPATH

# delete all files and dirs in the "./temp/" dictionary
# return 0: success;
def clear():
    cmd = "rm -rf " + SYSPATH + "/temp/*"
    #cmd_1 ="rm -rf " + "/root/workspace/v1.3-temp/*"
    #os.system(cmd_1)
    return os.system(cmd)

# use the dex2jar to generate the .jar file.
# Then move .jar file to the "./temp/" dictionary
# At last, unzip the .jar file to "./temp/" dictionary
# return 1: success ; return 0: fail
def dex2jar(filename):
    cmd1 = SYSPATH +"/dex2jar/dex2jar.sh " + filename
    #os.system(cmd)
    if os.system(cmd1) !=0:
        return 0
    
    newfilename = os.path.split(filename)[-1]
    newfilename = os.path.splitext(newfilename)[0] + "_dex2jar.jar"
    cmd2 = "mv " + os.path.dirname(filename) + "/" + newfilename + " " + SYSPATH + "/temp/"
    #cmd2 = "mv " + os.path.dirname(filename) + "/" + newfilename + " " +"/root/workspace/v1.3-temp"
    #print "lalalalal12345"+newfilename
    if os.system(cmd2) !=0:
        return 0
    if unzip(SYSPATH + "/temp/" + newfilename) != 0:
           return 0
     #print newfilename
    #if unzip("/root/workspace/v1.3-temp/"+newfilename)!=0:
     	#return 0
        
     #==========================================================================
     # if unzip(SYSPATH + "/temp/" + newfilename) != 0:
     #     return 0
     #==========================================================================
    
    return 1

# unzip the .jar file
# return 0: success;
def unzip(filename):
    cmd = "unzip -o " + filename + " -d" + SYSPATH + "/temp/unzip"
    print "hello"+filename
    #cmd = "unzip -o " + filename + " -d" + "/root/workspace/v1.3-temp/unzip"
    return os.system(cmd)

# decompile the apk to the Javacodes
# parameter:
#       filename: the full absolute path of the apk file
# return 1: success; return 0:fail
def decompile(filename):
    if clear() != 0:
        return 0    
    if dex2jar(filename) != 1:
        return 0
    FileName=''
#     print "type-->"+filename.split('.',1)[0]
#     print len(filename.split('/'))
#     print "other->"+filename.split('/')[5]
    FileName=filename.split('/')[len(filename.split('/'))-1]
    print "FileName--->"+FileName[:-4]     
    cmd = SYSPATH + "/jad158e.linux.static/jad -o -r -sjava -d" + SYSPATH + "/temp/java " + SYSPATH + "/temp/unzip/**/*.class"
#     cmd_t =SYSPATH +"/jad158e.linux.static/jad -o -r -sjava -d" +"/root/workspace/v1.3-temp/java/"+FileName[:-4]+" "+ SYSPATH + "/temp/unzip/**/*.class"#"/root/workspace/v1.3-temp/unzip/**/*.class"
#     os.system(cmd_t)
    #print "oooooo "+filename
    if os.system(cmd) != 0:
        return 0
 
    return 1



    
    
    
