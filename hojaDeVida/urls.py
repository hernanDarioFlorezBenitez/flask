
from django import views
from django.contrib import admin
from django.urls import path
from . import views



urlpatterns = [
    path('hojavida', views.hojavida, name="hojavida"),
    path('trabajar',views.trabajar, name="trabajar"),
    path('registrarHv/', views.registrarHv),
    path('registrarH/', views.registrarH),
    path('editHv/<ID>', views.editHv),
    path('editarHv/', views.editarHv),
    path('eliminarHv/<ID>', views.eliminarHv),
]
    