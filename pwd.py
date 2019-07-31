import os
cwd = os.getcwd()
cwd = cwd.replace('/home/pdouady', '~')
a = "/".join(cwd.split('/')[-4:])
if a != cwd:
	a = "../" + a
print("",a,"")
