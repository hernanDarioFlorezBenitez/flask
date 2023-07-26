
from django import views
from django.contrib import admin
from django.urls import include, path
from . import views



urlpatterns = [
    path('cursos', admin.site.urls, name="cursos"),
    path('cursos', views.cursos, name="cursos"),
    path('registrarCurso/', views.registrarCurso),
    path('editCurso/<ID_hotario>', views.editCurso),
    path('editarCurso/', views.editarCurso),
    path('eliminarCurso/<ID_hotario>', views.eliminarCurso),
    path('registrarCursoHome/', views.registrarCursoHome),
    path('salir/', views.salir, name="salir"),
    #path('admin',views.admin, name="admin"),
 

]
  