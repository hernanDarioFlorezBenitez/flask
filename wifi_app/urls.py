from django.urls import path
from . import views
from django import views
from django.contrib import admin
from django.urls import path
from . import views



app_name = 'wifi_app'

urlpatterns = [
    path('wifi_config', views.wifi_config, name='wifi_config'),
]
