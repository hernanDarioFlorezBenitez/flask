from django.db import models

# Create your models here.
#class hojaVida(models.Model):
#    ID= models.AutoField(primary_key=True)
#    cedula=models.IntegerField(max_length=100, verbose_name='cedula')  
 #   nombres=models.CharField(max_length=50, verbose_name='nombres')  
  #  apellidos=models.CharField(max_length=70, verbose_name='apellidos')    
   # correo=models.CharField(max_length=100, verbose_name='correo')    
   # celular=models.IntegerField(max_length=100, verbose_name='celular')
   # mensage=models.CharField(max_length=200, verbose_name='mensage')    
     
def _str_(self):
    texto= "{0} ({1})"
    return texto.format(self.cedula, self.nombres , self.apellidos)  



    
