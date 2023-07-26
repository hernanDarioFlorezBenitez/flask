from asyncore import write
import os

cmd="ipconfig"
resultado=os.popen(cmd)
print(resultado.read())

#http://192.168.0.1/
