#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Jun 17 14:46:28 2021

@author: janmejoy
"""

import urllib.request as urlr
import numpy as np

url1= 'https://image.slidesharecdn.com/essentialtraceelements-150310015456-conversion-gate01/95/essential-trace-elements-'
url2='-638.jpg?cb=1425952903'
urli_ls= np.arange(1,51,1)

for i in urli_ls:
    url=url1+str(i)+url2
    print(url)
    urlr.urlretrieve(url, 'trc_ele'+str(i)+'.jpg')