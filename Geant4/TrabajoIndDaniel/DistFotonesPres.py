# -*- coding: utf-8 -*-
"""
Created on Tue Oct 11 12:31:45 2016

@author: daniel
"""

from numpy import *
import os, glob
import matplotlib.pyplot as plt
import scipy.stats as stat
import plotly.plotly as py
import plotly.tools as tls

IC = []
energia = []

# valor para diferenciar el valor de producidos de detectados
cutoff = 5000

# Teniendo un archivo por energ\'ia, donde la energ\'ia est\'a dada en una
#   l\'inea con el formato "# 'valor de energ\'ia' GeV"
for file in glob.glob("*.txt"):
    infile = open(file,'r')
    producidos = []
    detectados = []
    cociente   = []
    for line in infile:
        a = (line.split(' ')[0])
        u = line.split(' ')[0]
        if a != '#' and a != '/':
            b = float(a)
            if b > cutoff:
                producidos.append(b)
            else:
                detectados.append(b)
        elif u == '/':
            energia.append(float(line.split(' ')[1]))
        
    for i in range(0,len(producidos)):
        cociente.append(detectados[i]/producidos[i])
    
    IC.append(stat.t.interval(0.95, len(detectados)-1, loc=np.mean(detectados),
                              scale=stat.sem(detectados)))
    DetectadosP = stat.shapiro(detectados)
    ProducidosP = stat.shapiro(producidos)
    CocienteP = stat.shapiro(cociente)

#fig2 = plt.subplot(311)
#set_ylabel("Conteo")
#set_xlabel("\nFotones producidos")
#fig1.hist(producidos,50,color="blue")

#fig2 = plt.subplot(312)
#fig2.set_title("\nFotones detectados")
#fig2.set_ylabel("Conteo")
#fig2.hist(detectados,50,color="red")
#
#fig3 = plt.subplot(313)
#fig3.set_title("\nFotones detectados / Fotones producidos")
#fig3.set_ylabel("Conteo")
#fig3.hist(cociente,50,color="green")
#plt.show()

## Graficando los promedios y observando si hay dependencia con energía
means = []
error = []
for i in IC:
    means.append(mean(i))
    error.append(mean(i)-i[0])

plt.figure()

plt.xlabel("Energia (GeV)")
plt.ylabel("Fotones producidos")
plt.xlim(0,6)
plt.ylim(0,400)

# Las barras de error se calcularon por el error de los intervalos de confianza
plt.errorbar(energia, means, yerr = error, fmt = 'o')
regresion = stat.linregress(energia,means)  # Valores de la regresi\'on lineal