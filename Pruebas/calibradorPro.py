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

bin_size = 10
max_adc = 1200
cal_files = 12
name = "Kinich Ahau"
cal_name = "CalibracionesTotales-Bin"+str(bin_size)+"-File"+str(cal_files)

total_bins = max_adc/bin_size
Data = np.zeros((total_bins))

for i in range(cal_files):
    print(i)
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
    result.write("%s\n" % int(item))
    
#sns.factorplot(data=Data)
sns.distplot(Data)