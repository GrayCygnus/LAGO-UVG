# -*- coding: utf-8 -*-
"""
Created on Tue Aug 23 23:06:05 2016

@author: Anai
"""

import math
import numpy as np
import pandas as pd
from scipy import stats, integrate
import matplotlib.pyplot as plt
import seaborn as sns
sns.set(color_codes=True)
np.random.seed(sum(map(ord, "distributions")))
#Calibrador Pro

#Se estara leyendo varios archivos .cal
#Se clasificaran en base a conteo de ADCq en intervalos variables
#Se escribiran en un archivo .txt para graficar

bin_size = 20
max_adc = 1200

name = "Kinich Ahau"
cal_name = "HistogramaMichel2-2"

total_bins = max_adc/bin_size
Data = np.zeros((total_bins))


#print(i)
with open('Michel2.txt') as f:
    lines = f.readlines()
    for l in lines:        
        adcq = math.floor(int(l)/bin_size)
        if adcq < total_bins:
            Data[adcq] = Data[adcq] + 1
            
#print(data)              
with open(cal_name+".txt", 'w') as result:
    for item in Data:
        result.write("%s\n" % int(item))
    
#sns.factorplot(data=Data)
sns.distplot(Data)