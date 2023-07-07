from django.db import models


class hojaVida(models.Model):
    ID= models.AutoField(primary_key=True)
    cedula=models.CharField(max_length=250, verbose_name='cedula')  
    nombres=models.CharField(max_length=50, verbose_name='nombres')  
    apellidos=models.CharField(max_length=70, verbose_name='apellidos')    
    correo=models.EmailField(max_length=100, verbose_name='correo')    
    celular=models.CharField(max_length=250, verbose_name='celular')
    mensage=models.CharField(max_length=200, verbose_name='mensage')    
     
def _str_(self):
    return  self.nombres  