from pyexpat.errors import messages
from unittest import loader
from django import template
from django.http import HttpResponse
import datetime
from django.template import Template, Context
from django.template.loader import get_template
from django.shortcuts import redirect, render

#from mysite.models import hojaVida



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
#vista de registro de hojas de vida








