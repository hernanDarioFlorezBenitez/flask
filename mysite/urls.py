"""
URL configuration for mysite project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django import views
from django.contrib import admin
from django.urls import path
from mysite import views
from django.urls import include
#from mysite.views import  index, singup, acercaDe, cobertura, trabajo, wifi




urlpatterns = [
    path('admin/', admin.site.urls),
    #path('', index),
    #path('singup/', singup),
    #path('login/', login),
    #path('acercaDe/', acercaDe),
    #path('cobertura/', cobertura),
    #path('trabajo/', trabajo),
    #path('wifi/', wifi),

    path('',views.index, name="index"),
    path('singup', views.singup, name="singup"),
    path('acercaDe',views.acercaDe, name="acercaDe"),
    path('login',views.login, name="login"),
    path('cobertura',views.cobertura, name="cobertura"),
    path('trabajo',views.trabajo, name="trabajo"),
    path('wifi', views.wifi, name="wifi"),
    path('pago', views.pago, name="pago"),
    path('instalacion', views.instalacion, name="instalacion"),
    path('reparaciones', views.reparaciones, name="reparaciones"),
    path('pqr', views.pqr, name="pqr"),
    path('cobertura', views.cobertura, name="cobertura"),

    path('inicio', views.inicio, name="inicio"),
    path('create', views.create, name="create"),
    path('edit', views.edit, name="edit"),
]


