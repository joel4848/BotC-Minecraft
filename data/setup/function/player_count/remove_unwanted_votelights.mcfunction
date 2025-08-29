$execute as @e[type=marker,scores={lightID=$(player_count_plus_1)..}] at @s run setblock ~ ~-3 ~ air
$execute as @e[type=marker,scores={lightID=$(player_count_plus_1)..}] at @s run setblock ~ ~-2 ~ air
$execute as @e[type=marker,scores={lightID=$(player_count_plus_1)..}] at @s run execute at @s run setblock ~ ~-1 ~ reinforced_deepslate replace
$execute as @e[type=marker,scores={lightID=$(player_count_plus_1)..}] at @s run setblock ~ ~ ~ air
$execute as @e[type=marker,scores={lightID=$(player_count_plus_1)..}] at @s run schedule function setup:player_count/remove_unwanted_votelights_action 1s