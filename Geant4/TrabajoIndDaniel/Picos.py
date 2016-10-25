# -*- coding: utf-8 -*-
"""
Created on Sun Oct 23 16:42:19 2016

@author: daniel
"""

# Correr este programa luego de correr el clasificador de Muones

# primer pico está entre el bin 6 al bin 20
# segundo pico está entre el bin 40 al bin 80

from numpy import *

ADCqMax1    = []
ADCqMax1Inc = []

listas = [Data]

for i in [[14,24],[5,14]]:
    #y, x = histogram(i, bins = 100)
    z, cov = polyfit(x[i[0]:i[1]],Data[i[0]:i[1]], deg = 2, cov = True)
    xmax = -z[1]/(2*z[0])
    errores = sqrt(diag(cov))
    xmaxInc = xmax*sqrt((errores[0]/z[0])**2+(errores[1]/z[1])**2)
    ADCqMax1.append(xmax)
    ADCqMax1Inc.append(xmaxInc)
    xi = linspace(10*i[0],10*i[1])
    plt.plot(xi,z[0]*xi**2+z[1]*xi+z[2],color="black")
    plt.plot(xmax,z[0]*xmax**2+z[1]*xmax+z[2],"D")

print(ADCqMax1, ADCqMax1Inc)