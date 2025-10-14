
advancement revoke @s only music_box:music_box_interact

execute unless score #music_box_running temp matches 1 run function music_box:a/default/play_anim

execute unless score #music_box_running temp matches 1 run function music_box:a_s/default/play_sound

execute unless score #music_box_running temp matches 1 run execute at @s run tellraw @a[distance=..10,scores={Storyteller=..0}] {"color":"dark_purple","text":"The music makes you feel drowsy...\nMaybe you should have heeded the warning?"}

execute unless score #music_box_running temp matches 1 run execute at @s run effect give @a[distance=..10,scores={Storyteller=..0}] minecraft:blindness infinite 1 true
execute unless score #music_box_running temp matches 1 run execute at @s run effect give @a[distance=..10,scores={Storyteller=..0}] minecraft:slowness infinite 5 true
# execute unless score #music_box_running temp matches 1 run execute at @s run effect give @a[distance=..10,scores={Storyteller=..0}] minecraft:nausea infinite 1 true

execute unless score #music_box_running temp matches 1 run schedule function music_box:finish 51s

scoreboard players set #music_box_running temp 1
