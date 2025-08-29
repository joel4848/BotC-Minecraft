# Announce nominated player

execute unless score #storyteller Nominated matches 1 run title @a actionbar {  "text": "",  "extra": [    {      "selector": "@a[scores={Nominated=1}]",      "color": "aqua"    },    {      "text": " is nominated",      "color": "white"    }  ]}
execute if score #storyteller Nominated matches 1 run title @a actionbar [{"bold":true,"color":"blue","text":"The Storyteller"},{"bold":false,"color":"white","text":" is nominated"}]

execute if score #player_currently_nominated temp matches 1 run execute as @a[scores={Storyteller=1}] run schedule function nomination:nominated_title_announcement 1t replace