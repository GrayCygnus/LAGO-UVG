# -*- coding: utf-8 -*-
"""
Created on Tue Oct 11 12:31:45 2016

@author: daniel
"""

from numpy import *
import re
import matplotlib.pyplot as plt

def step(x,a):
    return 1*(x>a)
    
def V(x,t,photons):
    V = 0
    for i in photons:
        if i[0]!="#":
            V = V + qe*step(x,float(i[0]))*exp(-x/t)
    return(V)

## Parámetros ##
# tiempo dado por inductancia total
t = 18.76
# eficiencia cuántica para 405 nm en milivatios
qe = 25

infile = open('1muon.txt', 'r')

per_row = []
for line in infile:
    per_row.append(line.split())
    
per_column = zip(per_row)

x = linspace(0,100)
y = V(x,t,per_row)

plt.plot(x,y)
plt.show()