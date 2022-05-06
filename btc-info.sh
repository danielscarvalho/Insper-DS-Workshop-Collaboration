#!/usr/bin/env python

import requests
from datetime import datetime
import pytz

tz = pytz.timezone('US/Pacific')
dt = datetime.now(tz).strftime('%Y-%m-%d %H:%M:%S')

btc=requests.get("https://www.mercadobitcoin.net/api/BTC/ticker/").json()["ticker"]
btc["now"]=dt

with open('btc.txt', 'a', encoding='utf-8') as infile:
    infile.write(str(btc)+"\n")
    
