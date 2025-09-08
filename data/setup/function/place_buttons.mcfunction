# Place buttons

# execute as @e[tag=votelight1] run execute at @s run setblock ~5 ~ ~ birch_button[powered=false,face=floor,facing=east]
# execute as @e[tag=votelight2] run execute at @s run setblock ~5 ~ ~ birch_button[powered=false,face=floor,facing=east]
# execute as @e[tag=votelight3] run execute at @s run setblock ~ ~ ~5 birch_button[powered=false,face=floor,facing=south]
# execute as @e[tag=votelight4] run execute at @s run setblock ~ ~ ~5 birch_button[powered=false,face=floor,facing=south]
# execute as @e[tag=votelight5] run execute at @s run setblock ~ ~ ~5 birch_button[powered=false,face=floor,facing=south]
# execute as @e[tag=votelight6] run execute at @s run setblock ~ ~ ~5 birch_button[powered=false,face=floor,facing=south]
# execute as @e[tag=votelight7] run execute at @s run setblock ~-5 ~ ~ birch_button[powered=false,face=floor,facing=east]
# execute as @e[tag=votelight8] run execute at @s run setblock ~-5 ~ ~ birch_button[powered=false,face=floor,facing=east]
# execute as @e[tag=votelight9] run execute at @s run setblock ~-5 ~ ~ birch_button[powered=false,face=floor,facing=east]
# execute as @e[tag=votelight10] run execute at @s run setblock ~-5 ~ ~ birch_button[powered=false,face=floor,facing=east]
# execute as @e[tag=votelight11] run execute at @s run setblock ~ ~ ~-5 birch_button[powered=false,face=floor,facing=south]
# execute as @e[tag=votelight12] run execute at @s run setblock ~ ~ ~-5 birch_button[powered=false,face=floor,facing=south]
# execute as @e[tag=votelight13] run execute at @s run setblock ~ ~ ~-5 birch_button[powered=false,face=floor,facing=south]
# execute as @e[tag=votelight14] run execute at @s run setblock ~ ~ ~-5 birch_button[powered=false,face=floor,facing=south]
# execute as @e[tag=votelight15] run execute at @s run setblock ~5 ~ ~ birch_button[powered=false,face=floor,facing=east]
# execute as @e[tag=votelight16] run execute at @s run setblock ~5 ~ ~ birch_button[powered=false,face=floor,facing=east]


function players:pickers/summon_picker_blocks
function players:pickers/summon_picker_interactions
function players:pickers/summon_picker_labels
schedule function picker_block:a/picker_rotate/play_anim_loop 1t

execute as @e[tag=picker_block] at @s run setblock ~ ~-1 ~ minecraft:light
execute as @e[tag=picker_block] at @s run setblock ~ ~-2 ~ minecraft:gold_block

execute as @e[tag=picker_block_auto] at @s run setblock ~ ~-1 ~ minecraft:light
execute as @e[tag=picker_block_auto] at @s run setblock ~ ~-2 ~ minecraft:gold_block
execute as @e[type=marker,tag=mapcentre] at @s run summon block_display ~-0.525 ~-0.525 ~-0.525 {Tags:["picker_block_auto_gold"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},block_state:{Name:"minecraft:gold_block"}}