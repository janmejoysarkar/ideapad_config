#!/bin/bash
#insert url to check price. Prices will be logged to a file on Desktop.
#Notification of the price will appear when the script is run.

url="https://www.amazon.in/Casio-G-Shock-Analog-Digital-Black-Watch-GA-2110SU-3ADR/dp/B088F98GGH/ref=dp_prsubs_sccl_1/259-5203065-0886915?pd_rd_w=orNLL&content-id=amzn1.sym.034146ad-754d-40a5-8426-26ed15189f9c&pf_rd_p=034146ad-754d-40a5-8426-26ed15189f9c&pf_rd_r=RJAS9X3JDPZQRGMBXVDM&pd_rd_wg=UzuYh&pd_rd_r=d7fb3f6e-7c09-4833-91fb-372e077f8c35&pd_rd_i=B088F98GGH&psc=1"
mkdir -p ~/Desktop/folder
cd ~/Desktop/folder
wget "$url"
price=$(cat * | grep -i pricetopay | cut -d ">" -f 6 | cut -d "<" -f 1)
name=$(echo $url | cut -d "/" -f 4)
notify-send $name $price
rm -r ~/Desktop/folder
echo $price>>~/Desktop/$name"_log.txt"

