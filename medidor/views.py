from django.shortcuts import render
from django.shortcuts import render
import speedtest

def medidor(request):
    mensaje = "Haz clic en el botón para medir la velocidad de Internet."
    ping = ""
    velocidad_bajada = ""
    velocidad_subida = ""

    if request.method == "POST":
        velocimetro = speedtest.Speedtest()
        mensaje = "Realizando prueba de velocidad..."
        servidor = velocimetro.get_best_server()
        ping = "PING: {:.2f} ms".format(servidor["latency"])
        velocidad_bajada = "BAJADA {:.2f} Mbps".format(velocimetro.download() / 1000000)
        velocidad_subida = "SUBIDA: {:.2f} Mbps".format(velocimetro.upload() / 1000000)
        mensaje = ""

    return render(request, "medidor.html", {
        "mensaje": mensaje,
        "ping": ping,
        "velocidad_bajada": velocidad_bajada,
        "velocidad_subida": velocidad_subida
    })

        