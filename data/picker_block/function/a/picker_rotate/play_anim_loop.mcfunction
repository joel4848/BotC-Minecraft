# picker_block created via BDEngine

execute as @e[tag=picker_block_root,type=item_display] at @s run tag @s remove animation_pause
execute as @e[tag=picker_block_root,type=item_display] at @s run tag @s add animation_loop
execute as @e[tag=picker_block_root,type=item_display] at @s run function picker_block:k/picker_rotate/keyframe_0