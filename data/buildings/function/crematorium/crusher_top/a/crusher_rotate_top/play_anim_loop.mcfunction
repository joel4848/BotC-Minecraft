# crusher_top created via BDEngine

execute as @e[tag=crusher_top_root,type=block_display] at @s run tag @s remove animation_pause
execute as @e[tag=crusher_top_root,type=block_display] at @s run tag @s add animation_loop
execute as @e[tag=crusher_top_root,type=block_display] at @s run function buildings:crematorium/crusher_top/k/crusher_rotate_top/keyframe_0