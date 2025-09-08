# Remove buttons

# execute as @e[tag=votelight1] run execute at @s run setblock ~5 ~ ~ air
# execute as @e[tag=votelight2] run execute at @s run setblock ~5 ~ ~ air
# execute as @e[tag=votelight3] run execute at @s run setblock ~ ~ ~5 air
# execute as @e[tag=votelight4] run execute at @s run setblock ~ ~ ~5 air
# execute as @e[tag=votelight5] run execute at @s run setblock ~ ~ ~5 air
# execute as @e[tag=votelight6] run execute at @s run setblock ~ ~ ~5 air
# execute as @e[tag=votelight7] run execute at @s run setblock ~-5 ~ ~ air
# execute as @e[tag=votelight8] run execute at @s run setblock ~-5 ~ ~ air
# execute as @e[tag=votelight9] run execute at @s run setblock ~-5 ~ ~ air
# execute as @e[tag=votelight10] run execute at @s run setblock ~-5 ~ ~ air
# execute as @e[tag=votelight11] run execute at @s run setblock ~ ~ ~-5 air
# execute as @e[tag=votelight12] run execute at @s run setblock ~ ~ ~-5 air
# execute as @e[tag=votelight13] run execute at @s run setblock ~ ~ ~-5 air
# execute as @e[tag=votelight14] run execute at @s run setblock ~ ~ ~-5 air
# execute as @e[tag=votelight15] run execute at @s run setblock ~5 ~ ~ air
# execute as @e[tag=votelight16] run execute at @s run setblock ~5 ~ ~ air


execute as @e[tag=picker_block] at @s run setblock ~ ~-1 ~ minecraft:air
execute as @e[tag=picker_block] at @s run setblock ~ ~-2 ~ minecraft:netherite_block

execute as @e[tag=picker_block_auto] at @s run setblock ~ ~-1 ~ minecraft:air
execute as @e[tag=picker_block_auto] at @s run setblock ~ ~-2 ~ minecraft:polished_blackstone_slab
kill @e[type=block_display,tag=picker_block_auto_gold]

function players:pickers/remove_picker_blocks
function players:pickers/remove_picker_interactions
function players:pickers/remove_picker_labels
function picker_block:stop/stop_anim