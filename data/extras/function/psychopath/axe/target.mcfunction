# call with extras:psychopath/axe/target {psychopath:%d,target:%d,active:true}

# i decicded not to add any player alive/dead checks due to the cursedness of some characters
# instead, calling an event that marks the player and allows the storyteller to resolve it

$team join Psychopath @a[scores={Player=-$(target)}]
$team join Psychopath @a[scores={Player=-$(psychopath)}]
effect give @a[team=Psychopath] glowing infinite 1 true

# Make sure PVP gets disabled

execute if score #immersive_pvp temp matches 1 if score #pvp_enabled temp matches 0 run gamerule pvp false
$execute as @a[scores={Player=-$(psychopath)}] run function extras:psychopath/axe/remove

# announce the psychopath's choice

title @a times 20t 140t 20t

# $(target)
# has been targeted by the Psychopath...
$title @a title [{"bold":false,"color":"dark_red","nbt":"player_$(target)_username","storage":"minecraft:joelbotc"}]
title @a subtitle [ \
    {"text":"has been targeted by the ","color":"light_purple"}, \
    {"text":"Psychopath","color":"dark_purple"}, \
    {"text":"...","color":"light_purple"} \
]

# $(psychopath) (your Psychopath) has targeted $(target)
$tellraw @a [ \
    {"nbt":"player_$(psychopath)_username","storage":"minecraft:joelbotc","color":"dark_purple"}, \
    {"text":" (your Psychopath) has targeted ","color":"light_purple"}, \
    {"nbt":"player_$(target)_username","storage":"minecraft:joelbotc","color":"dark_red"} \
]

# Storyteller, would you like to confirm this kill?
# [confirm] [don't]
tellraw @a[scores={Storyteller=1}] [ \
    {"text":"Storyteller","color":"blue"}, \
    {"text":", would you like to confirm this kill?\n","color":"gold"}, \
    {"text": "[confirm]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function extras:psychopath/axe/confirm_kill with storage extras:psychopath"},"hoverEvent":{"action":"show_text","contents":"Announces and kills the player"}}, \
    {"text": " "}, \
    {"text": "[don't]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function extras:psychopath/axe/deny_kill with storage extras:psychopath"},"hoverEvent":{"action":"show_text","contents":"Announces that the player does not die"}} \
]
