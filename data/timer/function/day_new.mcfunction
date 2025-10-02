scoreboard players set TimerEntity TimerPaused 1
time set 0
gamerule doDaylightCycle false
playsound minecraft:block.bell.use ambient @a ~ ~ ~ 5 1 1
title @a title {"text":"Wake up!","bold":true,"color":"yellow"}
title @a subtitle [{"text":"A new day dawns in ","color":"yellow"},{"nbt":"front_text.messages[2]","block":"168 107 29","interpret":true,"color":"yellow","italic":true},{"text":"...","color":"yellow"}]

# scoreboard players set Marked Marked -1
# setblock 167 91 2 minecraft:cobbled_deepslate

function timer:discussion_end_bell
schedule function timer:discussion_end_bell 5t append
schedule function timer:discussion_end_bell 35t append
schedule function timer:discussion_end_bell 40t append
schedule function timer:discussion_end_bell 70t append
schedule function timer:discussion_end_bell 75t append

# Make nametags visible

team modify Alive nametagVisibility always
team modify Dead nametagVisibility always
team modify Storyteller nametagVisibility always

# Disable ST tp to house

scoreboard players set #tp_disabled temp 1

# Set score for "It is nighttime" action bar announcement

scoreboard players set #is_nighttime temp 0
title @a actionbar ""