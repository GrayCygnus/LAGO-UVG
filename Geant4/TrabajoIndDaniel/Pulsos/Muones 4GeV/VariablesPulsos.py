# -*- coding: utf-8 -*-
"""
Created on Tue Oct 11 12:31:45 2016

@author: daniel
"""

from numpy import *
import re
import matplotlib.pyplot as plt
import scipy.stats as stat

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
# eficiencia cuántica para 405 nm en milivatios
qe = 80

infile = open('1000muones.txt', 'r')

pulsos = [[]]
npulso = 0

for line in infile:
    if line.split(' ')[0] == "#\n":
        pulsos.append([])
        npulso = npulso + 1
    elif line.split(' ')[1] == "ps":
        pulsos[npulso].append(float(line.split(' ')[0])/1000)
    else:
        pulsos[npulso].append(float(line.split(' ')[0]))
    
#per_column = zip(per_row)

x = linspace(0,100,500)

y = []
for i in range(0,len(pulsos)-1): # -1 corrige por el último # del archivo
    y.append(V(x,t,pulsos[i]))

amp       = []
ancho     = []
rise_time = []

for k in y:
    a    = amax(k)
    mean = stat.nanmean(k)
    std  = stat.tstd(k)
    amp.append(a)
    #ancho.append(x[k.index()])
#    for i in range(0,len(k)):
#        if i > 0*a:
#            index1 = i
    rise_time.append(x[list(k).index(a)])
    
#plt.plot(x,yins_means)
#plt.plot(x,yins_max,'--',color="grey")
#plt.plot(x,yins_min,'--',color="grey")
#plt.show()
    
plt.plot(rise_time,amp,'*',label="Muon 4GeV")
plt.legend()
plt.xlabel("Rise time (ns)")
plt.ylabel("Amplitud (mA/W)")
plt.show()