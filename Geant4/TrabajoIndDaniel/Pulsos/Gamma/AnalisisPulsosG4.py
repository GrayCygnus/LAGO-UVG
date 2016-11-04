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
# eficiencia cuántica para 405 nm en miliamperios/vatios
qe = 80

infile = open('MacroGamma.txt', 'r')

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

x = linspace(0,100,1000)

y = []
for i in range(0,len(pulsos)-1):
    y.append(V(x,t,pulsos[i]))

yins = map(list,zip(*y)) 
shapiros = []

yins_means = []
yins_std   = []
yins_max   = []
yins_min   = []

for i in yins:
    yins_means.append(mean(i))
    shapiros.append(stat.shapiro(i)[1])
    yins_std.append(std(i)/(npulso)**(0.5))
    yins_max.append(mean(i)+std(i)/(npulso)**(0.5))
    yins_min.append(mean(i)-std(i)/(npulso)**(0.5))

#fig2 = plt.subplot(312)
plt.plot(x,yins_means,label='Gamma 100 MeV')
plt.ylabel("mA")
plt.plot(x,yins_max,'--',color="grey")
plt.plot(x,yins_min,'--',color="grey")
plt.legend()
#fig2.plot(x,yins)
#fig2.legend()
#fig2.set_title("Gammas 100MeV")
#fig2.set_ylabel("Amplitud (A/mW)")
#fig2.plot(x,yins_max,'--',color="grey")
#fig2.plot(x,yins_min,'--',color="grey")
plt.show()