#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Dec  3 08:37:16 2021

@author: janmejoy

Replaces line changes from a string
with a space. Useful while copying PDF 
documents.
"""
import pyperclip
string= input("Input:")
string2= string.replace("\n", " ")
pyperclip.copy(string2)
print ("\n \n")
print(string2)
