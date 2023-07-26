
from django import views
from django.contrib import admin
from django.urls import path
from . import views



urlpatterns = [
    path('Planes', views.Planes, name="Planes"),
    path('registrarplanes/', views.registrarplanes),
    path('editplan/<ID>', views.editplan),
    path('editarplan/', views.editarplan),
    path('eliminarplan/<ID>', views.eliminarplan),
    
    
 

]
  