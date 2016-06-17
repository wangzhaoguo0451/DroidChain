import os
import sys
import Global

from startQT import SYSPATH


# use the apktool to get the smali codes and AndroidManifest.xml
# return 1: success ; return 0: fail
def callAPKtool(filename):
    outputPath = SYSPATH + "/temp/ApktoolOutput"
    cmd = "apktool d  -f " + filename + " " + outputPath
    print "callAPKtool ifo"
    #print filename
    #print cmd
    if os.system(cmd) !=0:
        return  0
    else:
        return  1


class APKtool:    
    firstFlag = None
    lastClassName = None
    
    def __init__(self):
        print "apktool 2"
#       self.successFlag = Global.FLAG_APKTOOL
        self.successFlag = 1
        self.firstFlag = 0
        self.lastClassName = ""

    def getManifest(self):
        if self.successFlag == 0:
            print "apktoollastClassName fail3"
            return [0, ""]
        print "apktool success 4"
        path = SYSPATH + "/temp/ApktoolOutput/AndroidManifest.xml"
        try:
            data = open(path, "r").read()
        except IOError:
            print "AndroidManifestIOError"
            data = ""
        return [1, data]


    # get the smali codes
    def getSmaliCode(self, className):
        if self.successFlag == 0:
            return [0, ""]
       # print "getSmalCode"
       # print className
            
        className = className[1:-1] + ".smali" 

        # this is the first time to call method "getSmaliCode"
        if self.firstFlag == 0:
            self.firstFlag ==1
            self.lastClassName = className
            classPath = SYSPATH + "/temp/ApktoolOutput/smali/" + className

            #print "a"
            #print className
            #print "b"
            #print classPath
            try:
                data = open(classPath, "r").read()
            except IOError:
                print "smaliIOError"
                data = ""
            return [1, data]
        
        # if the lastClassName is equal to className, the smali codes need not to be updated
        if self.firstFlag == 1:
            if self.lastClassName == className:
                return [0, ""] 
            else:
                self.lastClassName = className
                classPath = SYSPATH + "/temp/ApktoolOutput/" + className
                data = open(classPath, "r").read()
                return [1, data]
