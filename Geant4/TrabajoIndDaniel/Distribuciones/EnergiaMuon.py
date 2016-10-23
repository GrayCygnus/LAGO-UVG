# -*- coding: utf-8 -*-
"""
Created on Fri Oct 21 16:40:15 2016

@author: daniel
"""

from numpy import *
import matplotlib.pyplot as plt

dist = []

def dNdE(x):
    return(4.114e10*x**(-3.07143))

def Simpson3over8(f,a,b,n):
     h = (b-a)/n
     T = 0
     S = 0
     for i in range(1,n/3):
         T = T + (f(a + h*(3*i-3))+3*f(a + h*(3*i-2))
                 +3*f(a + h*(3*i-1))+f(a + h*(3*i)))
     S = h*T*3/8
     return(S)

for i in range(0,10000):
    con = 0
    while con != 1:
        x = 0.1+10**4*random.random()
        y = dNdE(x)
        alfa = random.random()
        if y>alfa:
            con = 1
    dist.append(x)

x1 = linspace(10**(1.6),10**4,1000)
y1 = dNdE(x1)
#plt.loglog(x1,y1,color="black")
plt.xlabel("E")
plt.ylabel("Conteo - Probabilidad")
plt.hist(dist,100,normed=True)
show()