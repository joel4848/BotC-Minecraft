# ghost_swing created via BDEngine

execute as @e[tag=ghost_swing_root,type=block_display] at @s run tag @s remove animation_pause
execute as @e[tag=ghost_swing_root,type=block_display] at @s run tag @s add animation_loop
execute as @e[tag=ghost_swing_root,type=block_display] at @s run function ghost_swing:k/default/keyframe_0