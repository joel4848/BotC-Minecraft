# Announce nominated player

title @a actionbar {  "text": "",  "extra": [    {      "selector": "@a[scores={Nominated=1}]",      "color": "aqua"    },    {      "text": " is nominated for exile",      "color": "white"    }  ]}

execute if score #player_currently_nominated temp matches 1 run schedule function voting:exile/process/nominated_title_announcement 1t replace