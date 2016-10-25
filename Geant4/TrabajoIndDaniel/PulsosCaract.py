# -*- coding: utf-8 -*-
"""
Created on Tue Oct 11 12:31:45 2016

@author: daniel
"""

from numpy import *
import re
import matplotlib.pyplot as plt
import scipy.stats as stat

# Este par de funciones toman una lista con todos los tiempos de detección de
#   un pulso y "cargan" al fotomultiplicador, cada carga decae exponencialmente
#   como en un circuito RC

def step(x,a):
    return 1*(x>a)
    
def V(x,t,photons):
    V = 0
    for i in photons:
        if i!="#":
            V = V + qe*step(x,i)*exp(-x/t)
    return(V)

## Parámetros ##
# tiempo dado por inductancia total
t = 18.76
# eficiencia cuántica del fotomultiplicador para 405 nm en A/mW
qe = 25

# El archivo .txt debería de tener por fila el valor del tiempo de detección
#   de cada foton, y cada pulso separado al final por una fila con un "#"
infile = open('pulsos.txt', 'r')

# Los elementos en la lista "pulsos" son cada uno una lista de los tiempos de
#   detección de un pulso
pulsos = [[]]

npulso = 0  # empieza en cero porque el primer pulso no tiene "#" al inicio
for line in infile:
    if line.split(' ')[0] == "#\n":
        pulsos.append([])
        npulso = npulso + 1
    elif line.split(' ')[1] == "ps":    # algunas deteccioens las da en "ps"
        pulsos[npulso].append(float(line.split(' ')[0])/1000)
    else:
        pulsos[npulso].append(float(line.split(' ')[0]))

x = linspace(0,100)

# en y se guardan los pulsos como se ven en el PMT, según la función V
y = []
for i in range(0,len(pulsos)-1):
    y.append(V(x,t,pulsos[i]))

# yins es la transpuesta de y, cada elemento es una lista de las amplitudes
#   por unidad de tiempo
yins = map(list,zip(*y)) 

shapiros = []
yins_means = []
yins_std   = [] # incertidumbre de la media
yins_max   = []
yins_min   = []

for i in yins:
    yins_means.append(mean(i))
    shapiros.append(stat.shapiro(i)[1])
    yins_std.append(std(i)/(npulso)**(0.5))
    yins_max.append(mean(i)+std(i))
    yins_min.append(mean(i)-std(i))
    
plt.plot(x,y)
plt.plot(x,yins_max,'--',color="grey")
plt.plot(x,yins_min,'--',color="grey")

# Para graficar todos los pulsos como en las figuras, descomentar esto
#fig3 = plt.subplot(313)
#fig3.plot(x,yins)
#fig3.legend()
#fig3.set_title("Electrones 37MeV")
#fig3.set_ylabel("Amplitud (A/mW)")

plt.show()