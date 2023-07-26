from django.urls import path
from medidor import views
from django import views
from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path("medidor", views.medidor, name="medidor"),
    path("medir", views.medidor, name="medir"),
]
