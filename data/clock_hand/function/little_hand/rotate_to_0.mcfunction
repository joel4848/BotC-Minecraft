scoreboard players set #little_hand_current_pos temp 0

$execute as @e[type=block_display,tag=little_hand] run data merge entity @s {start_interpolation:-1,interpolation_duration:$(little_hand_speed),transformation:{left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [5.5f, 0.15f, 0.15f], translation: [-0.25f, 0.0f, -0.075f]}}