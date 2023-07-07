from django.shortcuts import redirect, render
from unittest import loader
from django import template, views
from django.http import HttpResponse
import datetime
from django.template import Template, Context
from django.template.loader import get_template
from django.contrib import messages
from .models import curso


# Create your views here.
def cursos(request):
    cursosListado = curso.objects.all()
    messages.success(request, '!Listado Horario¡')
    return render(request,"gestionCursos.html",{"cursos":cursosListado})

def registrarCurso(request):
    horario_am=request.POST['txthorario_am']
    horario_pm=request.POST['txthorario_pm']
    horario_descanso=request.POST['txthorario_descanso']

    Curso=curso.objects.create(horario_am=horario_am, horario_pm=horario_pm,horario_descanso=horario_descanso)
    messages.success(request, '!Horario Registrado¡')
    return redirect('/cursos')

def editCurso(request, ID_hotario):
    Curso=curso.objects.get(ID_hotario=ID_hotario)
    return render(request,"editC.html",{"Curso":Curso})


def editarCurso(request):
    ID_hotario=request.POST['txtID_hotario']
    horario_am=request.POST['txthorario_am']
    horario_pm=request.POST['txthorario_pm']
    horario_descanso=request.POST['txthorario_descanso']

    Curso=curso.objects.get(ID_hotario=ID_hotario)
    Curso.horario_am=horario_am
    Curso.horario_pm=horario_pm
    Curso.horario_descanso=horario_descanso
    Curso.save()
    messages.success(request, '!Horario Actualizado¡')
    return redirect('/cursos')


def eliminarCurso(request, ID_hotario):
    Curso=curso.objects.get(ID_hotario=ID_hotario)
    Curso.delete()
    messages.success(request, '!Horario Eliminado¡')
    return redirect('/cursos')

