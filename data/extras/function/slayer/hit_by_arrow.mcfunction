data remove storage extras:immersive_pvp allowed
data remove storage extras:slayer arrow_shot

execute store result storage extras:slayer target int -1 run scoreboard players get @s Player

execute if data storage extras:slayer slayer run function extras:slayer/target with storage extras:slayer
