
execute as @e[type=marker,tag=crusher_sound,limit=1] at @s run playsound minecraft:entity.donkey.eat master @a ~ ~-8 ~ 0.1 0.5

execute if score #crematorium_conveyor_running temp matches 1 run schedule function buildings:crematorium/crusher_sound 1t
