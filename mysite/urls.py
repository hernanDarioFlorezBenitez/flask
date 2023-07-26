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
from django.urls import path , include, re_path
from mysite import views
from django.urls import include
from django.conf import settings
from django.views.static import serve
from django.contrib.auth import views as auth_views



urlpatterns = [
    path('admin/', admin.site.urls),
    path('',views.index, name="index"),
    path('accounts/',include('django.contrib.auth.urls')),
    path('acercaDe',views.acercaDe, name="acercaDe"),
    

   # path('resgistro',auth_views.LoginView.as_view(template_name='registration/singup.html'),name='resgistro' ),
    path('resgistro',views.resgistro, name="resgistro"),
    path('cobertura',views.cobertura, name="cobertura"),
    path('trabajo',views.trabajo, name="trabajo"),
    path('wifi', views.wifi, name="wifi"),
    path('pago', views.pago, name="pago"),
    path('instalacion', views.instalacion, name="instalacion"),
    path('reparaciones', views.reparaciones, name="reparaciones"),
    path('pqr', views.pqr, name="pqr"),
    path('perfil', views.perfil, name="perfil"),
    path('cobertura', views.cobertura, name="cobertura"),

    #vistas de ejemplo libreria

    path('', include('libreria.urls')),
    path('', include('hojaDeVida.urls')),
    path('', include('medidor.urls')),
    path('', include('wifi_app.urls')),
    path('', include('planes.urls')),


    path('intalacionplane/<ID_hotario>', views.intalacionplane),
]



urlpatterns +=[
    re_path(r'^media/(?P<path>,*)$',serve,{
        'document_root':settings.MEDIA_ROOT,
    })

]

if settings.DEBUG:
    from django.conf.urls.static import static
    urlpatterns += static(settings.MEDIA_URL, document_root=settings .MEDIA_URL)

#vista de la app medidor de elcidad

