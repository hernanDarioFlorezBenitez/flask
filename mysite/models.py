from django.db import models

# Create your models here.
class Trabajador(models.Model):
    id=models.AutoField(primary_key=True)
    cedula=models.CharField(int=100, verbose_name='Cedula')  
    nombre=models.CharField(max_length=100, verbose_name='Nombre')  
    apellido=models.CharField(max_length=100, verbose_name='Apellido')    
    celular1=models.IntegerField(max_length=100, verbose_name='Celular1')    
    celular2=models.IntegerField(max_length=100, verbose_name='Celular2')    
    direccion=models.CharField(max_length=100, verbose_name='Direccion')
    correo=models.CharField(max_length=100, verbose_name='Correo')  
    foto=models.ImageField(upload_to='upload/', verbose_name='Imagen')  

