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
cal_files = 4
name = "Kinich Ahau"
cal_name = "Calibracion-Bin"+str(bin_size)+"-File"+str(cal_files)

total_bins = 1200/20
Data = np.zeros((total_bins))

for i in range(cal_files):
    #print(i)
    with open('Cal'+str(i+1)+'.cal') as f:
        lines = f.readlines()
        for l in lines:
            if l[0] != "#":
                line_data = l.split(" ")
                d = int(line_data[2]) #3ra columna por channel 3
                adcq = math.floor(d/bin_size)
                if adcq < total_bins:
                    Data[adcq] = Data[adcq] + 1
#print(data)              
result = open(cal_name+".txt", 'w')
for item in Data:
    result.write("%s\n" % item)
    
sns.factorplot(data=Data)