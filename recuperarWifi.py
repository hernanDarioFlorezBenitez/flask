from asyncore import write
import os

cmd="netsh wlan show profile"
resultado=os.popen(cmd)
print(resultado.read())
miarchivo=open('wifi.csv','a') 
red=input("ingrese el nombre de la red : ")
cmd2="netsh wlan show profile "+red+" key=clear"
resultado2=os.popen(cmd2)
miarchivo.write(resultado2.read())
print(resultado2.read())
