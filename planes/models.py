from django.db import models

# Create your models here.
class planes(models.Model):
    ID= models.AutoField(primary_key=True)
    plan= models.CharField(max_length=100, verbose_name='plan') 
    detalles= models.CharField(max_length=100, verbose_name='detalles')
    precio = models.CharField(max_length=100, verbose_name='precio')

def __str__(self):
    return self.plan , self.detalles    
