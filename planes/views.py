from django.shortcuts import render
from django.shortcuts import redirect, render
from django.contrib import messages
from .models import planes
from django.contrib.auth.decorators import login_required



@login_required
def Planes(request,):
    planesListado=planes.objects.all()
    messages.success(request, '!Listado planes¡')
    return render(request,"planes.html",{"planes":planesListado})

def registrarplanes(request):
    plan=request.POST['txtplan']
    detalles=request.POST['txtdetalles']
    precio=request.POST['txtprecio']

    p=planes.objects.create(plan=plan, detalles=detalles, precio=precio)
    messages.success(request, '!Plan Registrado¡')
    return redirect('/Planes')

def editplan(request, ID):
    p=planes.objects.get(ID=ID)
    return render(request,"editP.html",{"p": p})


def editarplan(request):
    ID=request.POST['txtID']
    plan=request.POST['txtplan']
    detalles=request.POST['txtdetalles']
    precio=request.POST['txtprecio']

    p=planes.objects.get(ID=ID)
    p.plan=plan
    p.detalles=detalles
    p.precio=precio
    p.save()
    messages.success(request, '!Plan  Actualizado¡')
    return redirect('/Planes')


def eliminarplan(request, ID):
    plan=planes.objects.get(ID=ID)
    plan.delete()
    messages.success(request, '!Plan Eliminado¡')
    return redirect('/Planes')

