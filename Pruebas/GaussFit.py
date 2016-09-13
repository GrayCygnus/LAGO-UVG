# -*- coding: utf-8 -*-
"""
Created on Thu Sep 08 15:51:24 2016

@author: Anai
"""
"""
import numpy as np
from scipy.stats import norm
import matplotlib.pyplot as plt

y = np.array([50.0, 50.0 ,247.0, 152.0, 88.0, 62.0, 58.0, 54.0, 52.0, 52.0, 50.0, 51.0])
x = np.linspace(0.0, 11.0, num=12)

poly = np.poly1d(np.polyfit(x, y ,3))
polyx = np.linspace(0.0,11.0, num=100)

a = norm.fit()

plt.plot(x, y, 'o')
plt.plot(polyx, poly(polyx), '-')
"""

from numpy import sqrt, pi, exp, linspace, array, argmax
from lmfit import  Model

import matplotlib.pyplot as plt

def riseTime(f):
    """
    Funcion que calcula el rise time (10%-90%) de un evento cosmico
    Puede tambien aproximarse al 100%
    """
    
    #rise = 0
    #max90 = max(f)*0.9
    #i=argmax(f)
    
    #for z in range(i):
    #    if(final[i]<= max90):
    #        rise = i
    #        break
    #    i = i-1
    
    #return rise

def gaussian(x, amp, cen, wid):
    "1-d gaussian: gaussian(x, amp, cen, wid)"
    return (amp/(sqrt(2*pi)*wid)) * exp(-(x-cen)**2 /(2*wid**2))
    
def prueba():
    y2 = [49.0, 49.0, 101.0, 67.0, 65.0, 52.0, 49.0, 49.0, 54.0, 49.0, 48.0, 49.0]
    y = [i-50 for i in y2]
    x = linspace(0.0, 11.0, num=12) #variable ind para evento
    x2 = linspace(0.0, 11.0, num=400)   #variable ind para fit
    gmod = Model(gaussian)  #Generar un Modelo Gaussiano
    
    peak = max(y)
    result = gmod.fit(y, x=x, amp=peak, cen=5, wid=1)
    final = gmod.eval(x=x2, amp=result.best_values['amp'], cen=result.best_values['cen'], wid=result.best_values['wid'])
    
    plt.plot(x, y,         'bo')
    plt.plot(x, result.init_fit, 'k--')
    #plt.plot(x, result.best_fit, 'r-')
    plt.plot(x2, final, 'r-')
    plt.show()

print("Running...")
#y = array([50.0, 50.0 ,247.0, 152.0, 88.0, 62.0, 58.0, 54.0, 52.0, 52.0, 50.0, 51.0])
x = linspace(0.0, 11.0, num=12) #variable ind para evento
x2 = linspace(0.0, 11.0, num=300)   #variable ind para fit, 300 asi el eje x esta en 1ns
gmod = Model(gaussian)  #Generar un Modelo Gaussiano

#Iterar el Corpus de datos para realizar un archivo con los features en tuplas
#sampled_data = []

with open("C:\Users\Anai\Desktop\Miguel\LAGO\LAGO-AI\src\cosmicfilter\CosmicTrain.txt", "r") as f:
    with open("OutputClusterReduced.txt", "w") as output:
        for l in f:
            data = l.split("-")
            raw_data = data[0].strip().split(" ")
            #print(raw_data)
            y = [int(i)-47 for i in raw_data]
            peak = max(y)
            result = gmod.fit(y, x=x, amp=peak, cen=3, wid=1)
            final = gmod.eval(x=x2, amp=result.best_values['amp'], cen=result.best_values['cen'], wid=result.best_values['wid'])
            rtime = argmax(final)
            dummy = str(rtime)+"-"+str(peak)
            #if dummy not in sampled_data:
            output.write("["+str(rtime)+","+str(float(peak))+"]\n")
            #sampled_data.append(str(rtime)+"-"+str(peak))
            
print("Finished...")       
#amp_result = result.best_values['amp']
#cen_result = result.best_values['cen']
#wid_result = result.best_values['wid']



#print(result.fit_report())
#print(final)

#print(riseTime(final))


#plt.plot(x, y,         'bo')
#plt.plot(x, result.init_fit, 'k--')
#plt.plot(x, result.best_fit, 'r-')
#plt.plot(x2, final, 'g-')
#plt.show()



