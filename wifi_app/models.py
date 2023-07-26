from django.db import models

class WiFiConfig(models.Model):
    ssid = models.CharField(max_length=100)
    password = models.CharField(max_length=100)
