
execute as @e[type=item_display,tag=conveyor_1] run data merge entity @s {start_interpolation:-1,interpolation_duration:100,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-4.5f],scale:[1.438f,1f,1f]}}
execute as @e[type=block_display,tag=bone_pile] run data merge entity @s {start_interpolation:-1,interpolation_duration:100,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-4.5f],scale:[1f,1f,1f]}}
