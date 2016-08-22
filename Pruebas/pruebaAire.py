# -*- coding: utf-8 -*-
"""
Created on Sun Aug 21 18:00:58 2016

@author: Anai
"""

#Analisis de Datos captados por LAGO-UVG en el medio Aire

import numpy as np
import pandas as pd

from scipy import stats, integrate
import matplotlib.pyplot as plt
import math

import seaborn as sns
"""
sns.set(color_codes=True)
np.random.seed(sum(map(ord, "distributions")))
"""
"""
import numpy as np
import seaborn as sns
sns.set(style="darkgrid", palette="Set2")

eventos = []

x = [0,1,2,3,4,5,6,7,8,9,10,11]
y = np.sin(x)
y2 = np.sin(x)*2 -0.5
print(x)
print(y)

eventos.append(y)
eventos.append(y2)


#sns.tsplot(eventos, err_style="boot_traces", n_boot=1)
sns.tsplot(data=eventos, err_style="boot_traces", n_boot=100)
"""

sns.set()

#array de 12 bins con cargas en intervalos de 10 (iniciando en 48)
eventos = np.zeros((90,12))
#eventos[1,10] = eventos[1,10] +1

##Formula para calcular valor y = math.floor((dato-48)/10)
f = open("pruebaRaspberry_nogps_2016_08_10_23h00.dat", "r")
lago_raw = f.readlines()

x_val = 0

for line in lago_raw:
    if line[0] == "#":
        x_val = 0
    else:
        #leer el channel 1
        channels = line.split(" ")
        datum = int(channels[2])
        #incrementar heatmap
        y_val = math.floor((datum-48)/20)
        eventos[y_val, x_val] = eventos[y_val, x_val] +1
        x_val = x_val +1


#nipy_spectral nipy_spectral_r 
sns.heatmap(np.flipud(eventos), cmap="gnuplot")
