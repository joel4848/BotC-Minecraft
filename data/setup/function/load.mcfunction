
execute if score #picker_blocks_present temp matches 1 run function picker_block:stop/stop_anim
execute if score #picker_blocks_present temp matches 1 run schedule function picker_block:a/picker_rotate/play_anim_loop 5s
