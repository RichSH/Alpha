# listfile.py 
# print the total line numbers
import os
targetdir = "/Users/IT-0002922/Desktop/"
sufixs = ['.h','.m','.json','.mm','.cpp','.hpp']

count = 0

for root,dirs,files in os.walk(targetdir):
	for file in files:
		ext = os.path.splitext(file)[1]
		if ext in sufixs:
			pathfile = os.path.join(root,file)
			with open(pathfile,'r') as f:
				lines = f.readlines()
				count += len(lines)
				print pathfile,len(lines)

print 'Total:%d' % count
