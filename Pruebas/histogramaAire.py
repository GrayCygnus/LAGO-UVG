# -*- coding: utf-8 -*-
"""
Created on Sun Aug 21 20:25:39 2016

@author: Anai
"""

import numpy as np
import pandas as pd

from scipy import stats, integrate
import matplotlib.pyplot as plt
import math

import seaborn as sns
from numpy import trapz

sns.set()

datos = np.zeros((50))
evento = []
calculate = True

f = open("pruebaRaspberry_nogps_2016_08_10_23h00.dat", "r")
lago_raw = f.readlines()

for line in lago_raw:
    if line[0] != "#":
        #datos buenos
        channels = line.split(" ")
        datum = int(channels[2])
        evento.append(datum)
        if calculate:
            calculate = False
    else:
        #reset
        if not calculate:
            #integrar y agregar a datos
            adcq = trapz(evento)
            #calcular a que intervalo pertenecer e incrementar count
            intervalo = math.floor(adcq/20)
            #omitir mayores a un limite
            if intervalo < 50:
                datos[intervalo] = datos[intervalo] +1
            calculate = True;
        #else ignorar

sns.distplot(datos)

