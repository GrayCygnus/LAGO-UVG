# -*- coding: utf-8 -*-
"""
Created on Fri Aug 26 14:26:56 2016

@author: Anai
"""

#Programa que cuenta la cantidad de muones que cruzan y decaen
#Escribe un archivo con dichas columnas

#Los muones que decaen se separan entre [1,3] micro secundos [40,120]
#Los muones que cruzan se separan entre [8,11] micro segundos [320,440]

#LAGO muestrea a 40MHz, por lo que cada feature es 1/40,000,000
#1 micro segundo = 40 Sigmas (cuentas de LAGO)

#La carga se obtiene con np.trapz(data), restandole 50 a cada feature

#El archivo a leer se buscan varias cosas:
#   los elementos "# x h <HH:MM:SS>" indican inicio de un segundo nuevo
#   Los elementos "# t 4 <(0 ; 40,000,000)>" indican la fraccion del segundo actual
#   Los elementos de datos de los canales "ch1 ch2 ch3", actualmente se usa el ch3

import bz2
import numpy as np

#dat_files = 10 #cuantos archivos .dat se analizaran
chan = 3

#tmp = open("CrossingEvents.txt", 'a')


    
#Iniciar lista de eventos    
crossing_muons = [] #8-11 micro
decaying_muons = [] #1-3 micro
michel_electron = [] #derivado de muon que decae
i = 10
f = bz2.BZ2File("C:\Users\Anai\Desktop\lagodata\Eventos"+str(i)+".dat.bz2")  #leer el archivo comprimido
print("ya leyo "+str(i))


prev_clock = 0  #clock count anterior
curr_clock = 0  #clock count actual
prev_sec = 0    #segundo correspondiente al evento anterior
curr_sec = 0    #segundo correspondiente al evento actual
prev_event = [] #evento anterior
curr_event = [] #evento detectado en el canal indicado

for l in f:
    #inicio de nuevo segundo
    if(l.startswith("# x h")):  
        curr_sec = curr_sec +1  #incrementar segundo   
        
    #fin de evento y cuenta de reloj
    elif(l.startswith("# t 4")):   
        data = l.split(" ")            
        #actualizar clock actual
        curr_clock = int(data[3])    #3er elemento es el clock
        
        #comparar con evento anterior
        delta = curr_clock - prev_clock
        #en caso sean eventos entre segundos agregar 40M a delta
        if(curr_clock < prev_clock):
            delta = delta + 40000000
        #verificar si es un muon que decae
        if(delta >=40 and delta <= 120):                
            #calcular carga y almacenarla
            #El primer evento es el muon
            tmp = [x - 50 for x in prev_event]
            michel_electron.append(np.trapz(tmp))                
            
            #el segundo evento es el Michel Electron 
            tmp = [x - 50 for x in curr_event]
            decaying_muons.append(np.trapz(tmp))
        #verificar si es muon que atraviesa
        elif(delta >= 320 and delta <= 440):                
            #calcular carga y almacenar
            #El segundo evento es el que se captura 
            tmp = [x - 50 for x in curr_event]                   
            crossing_muons.append(np.trapz(tmp))
        #actualizar evento anterior
        prev_clock = curr_clock +0
        prev_event = list(curr_event)
        prev_sec = curr_sec + 0
        curr_event = [] #limpiar evento
    
    #otros comentarios que no nos interesan
    elif(l.startswith("#")):            
        pass        
    #datos de adc
    else:
        data = l.split(" ")
        if(len(data) == 3): #si no es error
            curr_event.append(int(data[chan-1]))  #lee el canal indicado y lo guarda
        
with open("Crossing2.txt", 'a') as result:
    for item in crossing_muons:
        result.write("%s\n" % int(item))      

with open("Decaying2.txt", 'a') as result:
    for item in decaying_muons:
        result.write("%s\n" % int(item)) 

with open("Michel2.txt", 'a') as result:
    for item in michel_electron:
        result.write("%s\n" % int(item))  

#Cerrar archivo de eventos antes de reiterar
f.close()

            
            
    


