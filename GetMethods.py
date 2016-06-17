import sys

if sys.path[0] == "":
	sys.path.append(sys.path[1]+"/androguard/")
	PATH_INSTALL = sys.path[1]+"/androguard/"
else:
	sys.path.append(sys.path[0]+"/androguard/")
	PATH_INSTALL = sys.path[0]+"/androguard"

sys.path.append(PATH_INSTALL + "/androguard")
sys.path.append(PATH_INSTALL + "/androguard/core")
sys.path.append(PATH_INSTALL + "/androguard/core/bytecodes")
sys.path.append(PATH_INSTALL + "/androguard/core/predicates")
sys.path.append(PATH_INSTALL + "/androguard/core/analysis1")
sys.path.append(PATH_INSTALL + "/androguard/core/vm")
sys.path.append(PATH_INSTALL + "/androguard/core/wm")
sys.path.append(PATH_INSTALL + "/androguard/core/protection")
sys.path.append(PATH_INSTALL + "/androguard/classification")
 
import androguard, analysis, androlyze  # @UnresolvedImport
import bytecode  # @UnresolvedImport

from dvm import *



class CLASS:
    apk = None
    vm = None
    vmx = None
    
    def __init__(self, apk, vm, vmx):
        self.apk = apk
        self.vm = vm
        self.vmx = vmx
    
    def get_class(self):
        return self.vm.get_classes()
        
    def get_classname(self, classes):
        return classes.get_name()
    
    def get_methods(self, classes):
        return classes.get_methods()
    
    def get_methodname(self, method):
        return method.get_name()
        
    def get_code(self, method):
        return method._code.show()
        
    def get_classlist(self):
        return self.vm.get_classes_names()
    
    def get_methods_class(self, classes):
        return self.vm.get_methods_class(classes)
    
    def get_maxdepth(self):
        classesnames = self.vm.get_classes_names()
        maxdepth = 0
        for i in classesnames:
            l = len(i.split("/"))
            if l > maxdepth:
                maxdepth = l
                
        return maxdepth


    #get where a permission is used
    def get_permission(self):
        pathDict = {}
        perms_access = self.vmx.tainted_packages.get_permissions([])
        for perm in perms_access:
            pathDict[perm] = self.show_path(perms_access[perm])
        
        return pathDict
  
    
    def show_path(self, paths):
        accessPathList = []
        cm = self.vm.get_class_manager()
        for path in paths:
            if isinstance(path,analysis.PathP):
                if path.get_access_flag() == analysis.TAINTED_PACKAGE_CALL:
					accessPath = ("%s %s %s (@%s-0x02)  --->  %s %s %s") % (path.get_src(cm)[0], path.get_src(cm)[1], \
																	 path.get_src(cm)[2], path.get_src(cm)[1], \
																	 path.get_dst(cm)[0], path.get_dst(cm)[1], path.get_dst(cm)[2])
					accessPathList.append(accessPath)

            
        return accessPathList
        
       

    
    # All Invoke Methods
    def get_methodInvoke(self):
        methodInvokeList = []
        allMethods = self.vm.get_methods()
        import Global
        for m in allMethods:
#Yuan :build callinout tree
           
            invokingMethod = m.get_class_name() + " " + m.get_descriptor() +"," + m.get_name()
            if (Global.NAV_NO == 1):  # @UndefinedVariable
                print "name first method"
                Global.FM = invokingMethod
                
            code =  m.get_code()
            if code == None:
                continue
            else:
                bc = code.get_bc()
                idx = 0
                lineNum = 1
                for i in bc.get():
                    line = i.show_buff(idx)
                    if line.find("invoke-") >= 0:
                        index = line.index("[meth@")
                        method = str(line[index:])
                        method2 = method.split(" ")                        

                        # set the class
                        ClassStartIndex = index + len(method2[0]) + len(method2[1]) + 2
                        className = line[ClassStartIndex : ClassStartIndex + len(method2[2])]
                        
                        # set the return type
                        ReturnStartIndex = index + method.rindex(")") + 2
                        returnType = line[ReturnStartIndex : ReturnStartIndex+len(method2[-2])]
                        
                        # set the method name 
                        NameStartIndex = index + method.rindex(" ") + 1
                        methodName = line[NameStartIndex : NameStartIndex + len(method2[-1]) - 1]
                        
                        # set the parameter name
                        ParameterStartIndex = index + method.index("(")
                        ParameterEndIndex = index + method.rindex(")") + 1
                        parameterName = line[ParameterStartIndex : ParameterEndIndex]
                        
                        # set the descriptor name
                        descriptorName = parameterName +returnType
                        
                        invokedMethod = className + " " +descriptorName+ "," + methodName
                        methodInvokeList.append(invokingMethod +" ---> " + invokedMethod + "^Line:"+str(lineNum)+"  Offset:"+"0x%x" % idx)
                        
                    lineNum += 1
                    idx += i.get_length() 
#        print "methodinvoke list\n" 
#        print  methodInvokeList
        file = open('method.txt','a')
#             file.write("%s\n" % method)
        file.write("%s\n" % methodInvokeList )
        file.close
        Global.endmethod = invokedMethod
        return methodInvokeList
