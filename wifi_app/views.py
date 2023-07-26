from django.shortcuts import render
from .forms import WiFiConfigForm

def wifi_config(request):
    form = WiFiConfigForm()

    if request.method == 'POST':
        form = WiFiConfigForm(request.POST)
        if form.is_valid():
            form.save()

    context = {'form': form}
    return render(request, 'wifi_config.html', context)
