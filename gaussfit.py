# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import numpy as np
from scipy.optimize import curve_fit
import matplotlib.pyplot as plt

def gauss (x, a, x0, sig):
    return a*np.exp(-(x-x0)**2/2*sig**2)

dire= '/home/janmejoy/Dropbox/Janmejoy_SUIT_Dropbox/science_filter_characterization/2022-02-21/NB2_3_Test/ascii/'
wl= np.loadtxt(dire+'filter.asc', usecols= 0, skiprows= 35)
tx= np.loadtxt(dire+'filter.asc', usecols= 1, skiprows= 35)

# x= np.arange(0, 10, 0.1)
# y= gauss(x, 2, 5, 1)

fit1, fit2= curve_fit(gauss, wl, tx, p0=(0.2, 270, 0.5))

print(fit1)

y_fit= gauss(wl, *fit1)

plt.plot(wl[800:1200], tx[800:1200])
plt.plot(wl[800: 1200], y_fit[800:1200])
plt.show()


