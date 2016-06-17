import re

addr_file =r'/home/wang/Desktop/AndroidMalwareSample/Alsalah.gexf'
text = open(addr_file,'r+')
result = list()
patfile = open(r'/home/wang/Desktop/AndroidMalwareSample/1.txt').read()
patsub = patfile.split("|");
patt = ''
patten =''

for eachpat in patsub:
    patt = patt + eachpat+"|"
patten = "(.*)" + "(" + patt[:-2] + ")" 

color = '<viz:color r="255" g="0" b="0"/>\n'
allLines = text.readlines();
text.close() 
#text.close()
#patt = r'(.*)(getSystemService)'
#patt = r'"(.*?)"'
count = 0
#patten = r"(.*)[a-zA-Z]+://(\w+(-\w+)*)(\.(\w+(-\w+)*))*(\?\S)?"#URL
#patten = r"(.*)13[0-9]|15[0|3|6|7|8|9]|18[8|9]\d{8}"#m-phone
#patten = r"(.*)((\d{3,4})|(\d{3,4}-?)|\s)?\d{7,8}"#telephone
#patten = r"(.*)\"(.*)\""
#patten = r"(.*)(((2[0-4]\d)|(25[0-5])|([01]?\d\d?))\.){3}((2[0-4]\d)|(25[0-5])|([01]?\d\d?))"#IP
#patten = r"(.*)(([1-9])|([1-9]\d)|(1\d{2})|(2[0-4]\d)|(25[0-5]))(\.((\d)|([1-9]\d)|(1\d{2})|(2[0-4]\d)|(25[0-5]))){3}"#IP

print patten
for eachline in allLines:  
    m = re.match(patten,eachline)
#    print patten
#    print "line is :%d\t|"% (count) + eachline
    if m is not None:
#        print "|||" + m.group()
#        print "m.string:", m.string
#        eachline = eachline + color
        print "m.re:", m.re
        print "line is :%d\t|"% (count) + eachline
        allLines.insert((count+1),color)
        s = ''.join(allLines)
        fp = file(addr_file, 'w') 
        fp.write(s)
        fp.close()
    count += 1
#    else:
#         print "|"         
#print "\ntext:"+text
#print "\npatt:"+patt
#print eachline;


