from django.shortcuts import redirect, render
from unittest import loader
from django import template, views
from django.http import HttpResponse
import datetime
from django.template import Template, Context
from django.template.loader import get_template
from django.contrib import messages
from .models import hojaVida
from django.contrib.auth.decorators import login_required

# Create your views here.

@login_required
def hojavida(request): #segunda vista
    hojaVidaListado = hojaVida.objects.all()
    messages.success(request, '!listado de hojas de vida¡')
    return render(request,"indexs.html",{"hojaVida": hojaVidaListado})

def registrarHv(request):
    cedula=request.POST['txtcedula']
    nombres=request.POST['txtnombres']
    apellidos=request.POST['txtapellidos']
    correo=request.POST['txtcorreo']
    celular=request.POST['txtcelular']
    mensaje=request.POST['txtmensaje']

    h=hojaVida.objects.create(cedula=cedula, nombres=nombres ,apellidos=apellidos,correo=correo,celular=celular,mensage=mensaje )
    messages.success(request, '!Datos Registrados Con Exito¡')
    return redirect('/hojavida')


def editHv(request, ID):
    h=hojaVida.objects.get(ID=ID)
    return render(request,"edit.html",{"h":h})

def editarHv(request):
    ID=request.POST['txtID']
    cedula=request.POST['txtcedula']
    nombres=request.POST['txtnombres']
    apellidos=request.POST['txtapellidos']
    correo=request.POST['txtcorreo']
    celular=request.POST['txtcelular']
    mensage=request.POST['txtmensaje']
   
    h=hojaVida.objects.get(ID=ID)
    h.cedula=cedula
    h.nombres=nombres
    h.apellidos=apellidos
    h.correo=correo
    h.celular= celular
    h.mensage=mensage
    h.save()
    messages.success(request, '!Hoja de vida Actualizado¡')
    return redirect('/hojavida')

def eliminarHv(request, ID):
    h=hojaVida.objects.get(ID=ID)
    h.delete()
    messages.success(request, '!Registro Eliminado¡')
    return redirect('/hojavida')



#formulario para enviar hojas de vida desde la pagina de usurio
def trabajar(request):
    return render(request,"trabaja_nosotros.html")


def registrarH(request):
    cedula=request.POST['txtcedula']
    nombres=request.POST['txtnombres']
    apellidos=request.POST['txtapellidos']
    correo=request.POST['txtcorreo']
    celular=request.POST['txtcelular']
    mensaje=request.POST['txtmensaje']

    h=hojaVida.objects.create(cedula=cedula, nombres=nombres ,apellidos=apellidos,correo=correo,celular=celular,mensage=mensaje )
    messages.success(request, '!Datos Registrados Con Exito¡')
    return redirect('/trabajar')
    