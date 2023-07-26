from django import forms
from .models import WiFiConfig

class WiFiConfigForm(forms.ModelForm):
    class Meta:
        model = WiFiConfig
        fields = ['ssid', 'password']
