scoreboard players set #running Roshambo 0
schedule clear extras:roshambo/tick_change_signs

scoreboard players reset @a RoshamboLocked
scoreboard players reset @a ConfirmRoshamboLock

function teleport:tp_all_to_seats

kill @e[tag=roshambo]

fill 148 98 -2 151 102 4 air replace
fill 186 98 4 183 102 -2 air replace