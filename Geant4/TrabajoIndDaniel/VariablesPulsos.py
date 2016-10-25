# -*- coding: utf-8 -*-
"""
Created on Tue Oct 11 12:31:45 2016

@author: daniel
"""

from numpy import *
import re
import matplotlib.pyplot as plt
import scipy.stats as stat

# utilizando la lista y generada por el programa de la secci\'on 10.3

amp       = []
rise_time = []

for k in y:
    a    = amax(k)
    mean = stat.nanmean(k)
    std  = stat.tstd(k)
    amp.append(a)
    rise_time.append(x[list(k).index(a)])

print(stat.t.interval(0.95, len(rise_time)-1, loc=np.mean(rise_time),
                      scale=stat.sem(rise_time)))
print(stat.t.interval(0.95, len(amp)-1, loc=np.mean(amp), scale=stat.sem(amp)))

# cambiando el 'label' seg\'un tipo de part\'icula
plt.plot(rise_time,amp,'+',label="Electron 37MeV")
plt.xlabel("Rise time (ns)")
plt.ylabel("Amplitud (A/mW)")
plt.legend()
plt.show()