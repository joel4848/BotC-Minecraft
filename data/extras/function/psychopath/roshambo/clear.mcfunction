scoreboard players set #running Roshambo 0
schedule clear extras:psychopath/roshambo/tick_change_signs

scoreboard players reset @a RoshamboLocked
scoreboard players reset @a ConfirmRoshamboLock

function teleport:tp_all_to_seats

kill @e[tag=roshambo]

fill 148 98 -2 151 102 4 air replace
fill 186 98 4 183 102 -2 air replace

execute if score #someone_marked temp matches 1 run tellraw @a[scores={Storyteller=1}] [{"color":"light_purple","text":"Click here to execute the marked player: ["},{"clickEvent":{"action":"run_command","value":"/function execution:run_execution"},"color":"gold","text":"Run Execution","underlined":true},{"color":"light_purple","text":"]"}]