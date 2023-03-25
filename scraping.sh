#!/bin/bash
PATH=/opt/someApp/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Get Litecoin price
litecoin_price=$(curl -s https://coinmarketcap.com/fr/currencies/litecoin/ | grep -oP '(?<=<div class="priceValue ">).*?(?=</div>)' | sed 's/.*>\(.*\)<.*/\1/;s/€//')

# Get current date
current_date=$(date +'%Y-%m-%d %H:%M:%S')

# Append to file
echo "${current_date}: ${litecoin_price}" >> Litecoin_prices.txt

