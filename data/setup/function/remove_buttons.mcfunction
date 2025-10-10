# Remove buttons

execute as @e[tag=picker_block] at @s run setblock ~ ~-1 ~ minecraft:air
execute as @e[tag=picker_block] at @s run setblock ~ ~-2 ~ minecraft:netherite_block

execute as @e[tag=picker_block_auto] at @s run setblock ~ ~-1 ~ minecraft:air
execute as @e[tag=picker_block_auto] at @s run setblock ~ ~-2 ~ minecraft:polished_blackstone_slab
kill @e[type=block_display,tag=picker_block_auto_gold]

function picker_block:stop/stop_anim
function players:pickers/remove_picker_blocks
function players:pickers/remove_picker_interactions
function players:pickers/remove_picker_labels

scoreboard players set #picker_blocks_present temp 0
