# Place buttons

function players:pickers/summon_picker_blocks
function players:pickers/summon_picker_interactions
function players:pickers/summon_picker_labels
function picker_block:stop/stop_anim
schedule function picker_block:a/picker_rotate/play_anim_loop 5t replace

execute as @e[tag=picker_block] at @s run setblock ~ ~-1 ~ minecraft:light
execute as @e[tag=picker_block] at @s run setblock ~ ~-2 ~ minecraft:gold_block

execute as @e[tag=picker_block_auto] at @s run setblock ~ ~-1 ~ minecraft:light
execute as @e[tag=picker_block_auto] at @s run setblock ~ ~-2 ~ minecraft:gold_block
execute as @e[type=marker,tag=mapcentre] at @s run summon block_display ~-0.525 ~-0.525 ~-0.525 {Tags:["picker_block_auto_gold"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},block_state:{Name:"minecraft:gold_block"}}

scoreboard players set #picker_blocks_present temp 1
