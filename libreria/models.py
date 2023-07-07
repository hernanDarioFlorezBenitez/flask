from django.db import models

# Create your models here.
class curso(models.Model):
    ID_hotario = models.AutoField(primary_key=True)
    horario_am = models.CharField(max_length=100, verbose_name='horario am') 
    horario_pm = models.CharField(max_length=100, verbose_name='horario pm')
    horario_descanso = models.CharField(max_length=100, verbose_name='horario descanso')

def _str_(self):
    texto= "{0} ({1})"
    return texto.format(self.horario_am , self.horario_pm)    
