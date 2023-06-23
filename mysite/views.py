from unittest import loader
from django import template
from django.http import HttpResponse
import datetime
from django.template import Template, Context
from django.template.loader import get_template
from django.shortcuts import render

#def saludo(request): #primera vista
   # doc_externo=open("C:/Users/HERNAN/Desktop/flask/mysite/template/plantilla.html") 
    #doc_externo=open("C:/Users/HERNAN/Desktop/WEB RYR/pagina web RYRcopia/index.html")
   # plt=Template(doc_externo.read())
   # doc_externo.close()
    
    #doc_externo=loader.get_template('plantilla-html')
    #ctx=Context()
    
    #documento=doc_externo.render()

    #return render(request,"plantilla.html")

def index(request): #segunda vista
    return render(request,"index.html")

def singup(request): #segunda vista
    return render(request,"singup.html")

def login(request): #segunda vista
    return render(request,"login.html")
    
def acercaDe(request): #segunda vista
    return render(request,'acercaDe.html')

def cobertura(request): #segunda vista
    return render(request,"cobertura.html")

def trabajo(request): #segunda vista
    return render(request,"trabaja_con_nosotros.html")

def wifi(request): #segunda vista
    return render(request,"wifi.html")

def pago(request): #segunda vista
    return render(request,"pago.html")

def instalacion(request): #segunda vista
    return render(request,"instalacion.html")

def reparaciones(request): #segunda vista
    return render(request,"reparaciones.html")

def pqr(request): #segunda vista
    return render(request,"pqr.html")

def cabertura(request): #segunda vista
    return render(request,"cabertura.html")

# backend

def inicio(request): #segunda vista
    return render(request,"empleados/indexs.html", )

def create(request): #segunda vista
    return render(request,"empleados/create.html")

def edit(request): #segunda vista
    return render(request,"empleados/edit.html")





