from pyexpat.errors import messages
from unittest import loader
from django import template
from django.http import HttpResponse
from django.template import Template, Context
from django.template.loader import get_template
from django.shortcuts import redirect, render
from django.contrib.auth.decorators import login_required
from libreria.models import curso
from planes.models import planes
from django.contrib.auth import authenticate,login
from django.contrib.auth import logout
from .form import CustomUserCreationForm
from mysite import form




#from mysite.models import hojaVida


def index(request): #segunda vista
    planesListado=planes.objects.all()
    return render(request,"index.html",{"planes":planesListado})
    #return render(request,"index.html")


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

@login_required
def instalacion(request): #segunda vista
    planesListado=planes.objects.all()
    return render(request,"instalacion.html",{"planes":planesListado})

def intalacionplane(request, ID):
    planesListado=planes.objects.get(ID=ID)
    return render(request,"editC.html",{"planes":planesListado})





@login_required
def reparaciones(request): #segunda vista
    return render(request,"reparaciones.html")
@login_required
def pqr(request): #segunda vista
    return render(request,"pqr.html")
@login_required
def cabertura(request): #segunda vista
    return render(request,"cabertura.html")
@login_required
def perfil(request):
    return render(request,"perfil.html")

def resgistro(request):
    data={
        'form':CustomUserCreationForm()
    }
    if request.method=='POST':
        user_creation_form = CustomUserCreationForm(data=request.POST)
        if user_creation_form.is_valid():
            user_creation_form.save()

            user=authenticate(username=user_creation_form.cleaned_data['username'],password=user_creation_form.cleaned_data['password1'])
            login(request,user)
            
            return redirect('/')
            
        
    return render(request,'registration/singup.html', data)



       
       
     


