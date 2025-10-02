execute if score #ghost_loop_running temp matches 0 run function ghost_swing:a/default/play_anim_loop

scoreboard players set #ghost_loop_running temp 1

schedule function ghost_swing:_/stop_anim 60s