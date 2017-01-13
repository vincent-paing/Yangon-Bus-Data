# Yangon-Bus-Data

**OBSOLETE, YBS WILL OPEN SOURCE THEIR DATA ON 14 JAN, LINK WILL BE UPDATED ACCORDINGLY**

This is the colllection of  data for the new yangon bus
> Data Last Updated On *12 Jan 2017, 6 : 39 PM*

This includes
* CSV
* JSON
* GeoJSON

## Bus Lines
**buslines** are in the format of 

*bus_id , bus_type, routes, bus_stops*

Bus Types are as follows

*0* - Blue ( မြောက်ပိုင်းခရိုင် အခြေပြု ယာဉ်လိုင်းများ )

*1* - Red ( အရှေ့ပိုင်းရိုင် အခြေပြု ယာဉ်လိုင်းများ )

*2* - Purple ( တောင်ပိုင်းခရိုင် အခြေပြု ယာဉ်လိုင်းများ )

*3* - Green ( ပင်မလမ်းနဲ့ ချိတ်ဆက်သည့် ယာဉ်လိုင်းများ )

*4* - Brown ( မြို့တွင်းပတ်လိုင်းများ )

## Bus Routes

**bus_routes** are in the format of 

*route_name , bus_ids*

## Bus Stops

**bus_stops** are in the format of 

*bus_stop_name, latitude, longitude , bus_ids*

## Disclaimer
I'm not affiliated with Yangon Bus Service. Data are pulled from [Yangon Bus website](http://yangonbus.com/) using a html parser. I **DO NOT** guarantee the CSV will be updated as soon as data is changed in Yangon Bus Website.

## Credit
JSON idea inspired from [Ye Lin Aung](https://github.com/ye-lin-aung) 

GeoJson Data by [mapmeld](https://github.com/mapmeld)

**Please Fork and contribute to the data sheet**
