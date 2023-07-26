
from pydoc import cli
from tkinter import *
import Speedtest

def test_velocidad():
    speed_test= Speedtest()
    download=speed_test.download()
    upload=speed_test.upload()
    ping_lbl.config(text=str(speed_test.result.ping))
    download_speed=round(download/(10**6),2)
    upload_speed=round(upload/(10**6),2)
    down_lbl.config(text=str(download_speed))
    up_lbl.config(text=str(upload_speed))


ventana=Tk()
ventana.title("Internet Speed Trecker")
ventana.config(bg="#292629")
ventana.inconbitmap("Masked.ico")
ventana.resizable(False, False)

imagen=PhotoImage(file="unnamed.png")
img_lbl=Label(ventana, image=imagen,bg="#292629")
img_lbl.grid(row=0, column=0, columnspan=3, padx=5, pady=5)

imagen2=Image.open("speed2.png")
imagen2=imagen2.resize((400,50),Image.ANTIALIAS)
imagen2=ImageTk.PhotoImage(imagen2)
img_lbl2=Label(ventana,image=imagen2,bg="#292629")
img_lbl2.grid(row=1, column=0, columnspan=3, padx=5)
  
   #pantalla donde se muetsra el ping que se realiza
ping_lbl=Label(ventana, text="---",bg="#292629", font=("AR CHISTY",15), fg="white", anchor=CENTER) 
ping_lbl.grid(row=2,column=0, padx=5)
ping_lbl=Label(ventana, text="---",bg="#292629", font=("AR CHISTY",15), fg="white", anchor=CENTER) 
ping_lbl.grid(row=2,column=1, padx=5)
ping_lbl=Label(ventana, text="---",bg="#292629", font=("AR CHISTY",15), fg="white", anchor=CENTER)   
ping_lbl.grid(row=2,column=2, padx=5)

    #boton que llama la funcion que calcula la velocidad
btn=Button(ventana, text="Get Speed",command=test_velocidad, width=15,bg="381b1d7")
btn.grid(row=3,column=0,columnspan=3, pady=5)

ventana.mainloop()