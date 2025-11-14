#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Jan  1 15:26:21 2022

@author: janmejoy

Whatsapp bomb. Keep screen divided such that Spyder
just crosses the webcam on the right side.
"""
import pyautogui as pag
import time

def wish(wish):
    pag.click(800,1000)
    pag.write(wish)
    pag.press('enter')

def dlt():
    pag.moveTo(920,930, duration=0.1)
    pag.click()
    pag.moveTo(900,880, duration=0.1)
    pag.click()
    pag.moveTo(620,550, duration=0.1)
    pag.click()

i=0
while i<20:
    wish('I!')
    #dlt()
    time.sleep(0.5)
    i=i+1
