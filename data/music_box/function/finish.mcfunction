
execute if score #music_box_running temp matches 1 run effect clear @a minecraft:blindness
execute if score #music_box_running temp matches 1 run effect clear @a minecraft:slowness

scoreboard players set #music_box_running temp 0
