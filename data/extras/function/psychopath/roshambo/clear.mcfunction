scoreboard players set #running Roshambo 0
schedule clear extras:psychopath/roshambo/tick_change_signs

scoreboard players reset @a RoshamboLocked
scoreboard players reset @a ConfirmRoshamboLock

function teleport:tp_all_to_seats

kill @e[tag=roshambo]

fill 148 98 -2 151 102 4 air replace
fill 184 100 2 184 99 0 air replace
fill 186 98 4 183 102 -2 air replace

execute if score #someone_marked temp matches 1 run tellraw @a[scores={Storyteller=1}] [{"color":"light_purple","text":"Click here to execute the marked player: ["},{"clickEvent":{"action":"run_command","value":"/function execution:run_execution"},"color":"gold","text":"Run Execution","underlined":true},{"color":"light_purple","text":"]"}]

# Clear mark (debug)

execute if score #psychopath_lost_roshambo temp matches 0 run function execution:clear_mark
scoreboard players set #psychopath_lost_roshambo temp 0

# Reapply glowing for Psychopath

effect give @a[scores={Marked=1}] glowing infinite 99 true
