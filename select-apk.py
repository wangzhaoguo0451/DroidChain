#!/usr/bin/env python2
#-*-encoding:utf-8-*-

import os
import sys
import zipfile

def walk_dir(dir,fileinfo,topdown=True):
    for root, dirs, files in os.walk(dir, topdown):
        for name in files:
            path = os.path.join(root,name)
            md5v = zip_test(path)
            newpath = path.replace(dir,'')
            fileinfo.write(newpath + ':' + str(md5v) + '\n')

def zip_test(fpath):
    Complete_dir = "/home/wang/Desktop/result/Complete"
    Damage_dir ="/home/wang/Desktop/result/Damage"
    print fpath 
    if zipfile.is_zipfile(fpath) is True:
       cut_and_paste_file(fpath, Complete_dir)
    else:
       cut_and_paste_file(fpath, Damage_dir)
    return zipfile.is_zipfile(fpath) 

def cut_and_paste_file(source, destination):
	'''def format_path(path):
		if not os.path.isabs(path):
			path = os.path.join(os.getcwd(), path)
		return path
	def mk_dir(path):
		if not os.path.exists(os.path.dirname(path)):
			mkdir_cmd = 'mkdir "%s"' % os.path.dirname(path)
			print os.popen(mkdir_cmd).read()
	
	destination = os.path.join(format_path(destination), source)
	source = format_path(source)
	mk_dir(source)
	mk_dir(destination)'''
	copy_cmd = 'cp "%s" "%s"' % (source, destination)
# 	print 'cp_cmd:%s' % copy_cmd
# 	print os.popen(copy_cmd).read()
	del_cmd = 'rm "%s"' % source
# 	print 'rm_cmd:%s' % del_cmd
# 	print os.popen(del_cmd).read()
def main():
    #dir = raw_input('please input the path:')
    dir = "/home/wang/Desktop/LTSQ"
    fileinfo = open('list3.txt','w')
    walk_dir(dir,fileinfo)
if __name__ == '__main__':
    main()
