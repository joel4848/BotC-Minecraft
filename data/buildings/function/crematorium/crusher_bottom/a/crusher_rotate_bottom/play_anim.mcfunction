# crusher_bottom created via BDEngine

execute as @e[tag=crusher_bottom_root,type=block_display] at @s run tag @s remove animation_pause
execute as @e[tag=crusher_bottom_root,type=block_display] at @s run tag @s remove animation_loop
execute as @e[tag=crusher_bottom_root,type=block_display] at @s run function buildings:crematorium/crusher_bottom/k/crusher_rotate_bottom/keyframe_0