# call with extras:slayer/target {slayer:%d,target:%d,allowed:true|false,arrow_shot:true|false}

$team join Psychopath @a[scores={Player=-$(target)}]
$team join Psychopath @a[scores={Player=-$(slayer)}]
effect give @a[team=Psychopath] glowing infinite 1 true

execute if score #immersive_pvp temp matches 1 if score #pvp_enabled temp matches 0 run gamerule pvp false

title @a times 20t 140t 20t

# $(target)
# was shot by the Slayer...
$title @a title [{"bold":false,"color":"dark_red","nbt":"player_$(target)_username","storage":"minecraft:joelbotc"}]
title @a subtitle [ \
    {"text":"was shot by the ","color":"light_purple"}, \
    {"text":"Slayer","color":"dark_purple"}, \
    {"text":"...","color":"light_purple"} \
]

# $(slayer) (your Slayer) has shot $(target)
$tellraw @a [ \
    {"nbt":"player_$(slayer)_username","storage":"minecraft:joelbotc","color":"dark_purple"}, \
    {"text":" (your Slayer) has shot ","color":"light_purple"}, \
    {"nbt":"player_$(target)_username","storage":"minecraft:joelbotc","color":"dark_red"} \
]

# Storyteller, would you like to confirm this kill?
# [confirm] [don't]
tellraw @a[scores={Storyteller=1}] [ \
    {"text":"Storyteller","color":"blue"}, \
    {"text":", would you like to confirm this kill?\n","color":"gold"}, \
    {"text": "[confirm]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function extras:slayer/confirm_kill with storage extras:slayer"},"hoverEvent":{"action":"show_text","contents":"Announces and kills the player"}}, \
    {"text": " "}, \
    {"text": "[don't]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function extras:slayer/deny_kill with storage extras:slayer"},"hoverEvent":{"action":"show_text","contents":"Announces that the player does not die"}} \
]
