
from django import views
from django.contrib import admin
from django.urls import path
from . import views



urlpatterns = [
    path('cursos', views.cursos, name="cursos"),
    path('registrarCurso/', views.registrarCurso),
    path('editCurso/<ID_hotario>', views.editCurso),
    path('editarCurso/', views.editarCurso),
    path('eliminarCurso/<ID_hotario>', views.eliminarCurso),
]
  