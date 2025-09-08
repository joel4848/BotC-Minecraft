time set 18000
gamerule doDaylightCycle false
function timer:discussion_end_bell
schedule function timer:discussion_end_bell 10t append
schedule function timer:discussion_end_bell 60t append
schedule function timer:discussion_end_bell 70t append
title @a title {"text":"Go to bed!","bold":true,"color":"blue"}
title @a subtitle [{"text":"Night falls in ","color":"blue"},{"nbt":"front_text.messages[2]","block":"168 107 29","interpret":true,"color":"blue","italic":true},{"text":"...","color":"blue"}]
scoreboard players set TimerEntity TimerPaused 1
function timer:hide_bossbar

# Make nametags invisible

team modify Alive nametagVisibility never
team modify Dead nametagVisibility never
team modify Storyteller nametagVisibility never

# Do full reset of vote system

function voting:reset_vote_full

# Reenable tp

scoreboard players set #tp_disabled temp 0

# Remove hands

function clock_hand:remove_hands