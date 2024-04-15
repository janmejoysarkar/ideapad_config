#!/usr/bin/env python3

import requests
import bs4

print ('Moon Phase')

url= requests.get('https://phasesmoon.com/')

soup= bs4.BeautifulSoup(url.content, 'lxml')
x=soup.select('.col4')
for i in x:
	print (i.text)

    
    
input("\nPress ENTER to exit")

