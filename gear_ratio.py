#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri May 31 20:04:12 2024

@author: janmejoy
"""
import numpy as np
import matplotlib.pyplot as plt

def gear(wheeldia, chainring, sproket): #wheel dia in inches
    wheeldia= wheeldia*2.54e-2
    dist= wheeldia*(chainring/sproket)
    return(dist)


sproket= np.linspace(14, 28, 7)
st30= gear(26, 38, sproket)
st100_1= gear(27.5, 22,sproket)
st100_2= gear(27.5, 32, sproket)
st100_3= gear(27.5, 42, sproket)

plt.figure()
plt.plot(sproket, st30,'.-', label="ST30")
plt.plot(sproket, st100_1, '.-')
plt.plot(sproket, st100_2, '.-')
plt.plot(sproket, st100_3, '.-')
plt.fill_between(sproket, st30[-1],st30[0],alpha=0.3)
plt.fill_between(sproket, st100_1[-1],st100_1[0],alpha=0.3)
plt.fill_between(sproket, st100_2[-1],st100_2[0],alpha=0.3)
plt.fill_between(sproket, st100_3[-1],st100_3[0],alpha=0.3)

plt.xlabel("Sproket teeth")
plt.ylabel("Distance travelled in m")
plt.legend()
plt.grid()

