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
qe = 25

infile = open('500electrones.txt', 'r')

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

x = linspace(0,100)

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
    
print(stat.t.interval(0.95, len(rise_time)-1, loc=np.mean(rise_time), scale=stat.sem(rise_time)))
print(stat.t.interval(0.95, len(amp)-1, loc=np.mean(amp), scale=stat.sem(amp)))

plt.plot(rise_time,amp,'+',label="Electron 37MeV")
plt.xlabel("Rise time (ns)")
plt.ylabel("Amplitud (A/mW)")
plt.legend()
plt.show()