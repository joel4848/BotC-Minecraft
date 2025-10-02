# if it doesnt already exist, put a dance1 marker 2 blocks above the commandblock

execute unless entity @e[type=marker,tag=dance1,limit=1] run summon marker ~ ~3 ~ {Tags:["dance1"]}

# add the dance_settings dictionary, and give it the word STOP as a safety switch

scoreboard objectives add dance_settings dummy "settings"
scoreboard players set STOP dance_settings 0
scoreboard players set layer dance_settings 1

# execute the loop

execute if score STOP dance_settings matches 0 run function dance:schedule_loop