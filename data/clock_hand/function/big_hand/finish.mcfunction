# Keep next_pos sane so a stray step can’t write 0

scoreboard players operation #next_pos temp = #big_hand_current_pos temp

# (Optional) clear temps if you want, but not strictly necessary

scoreboard players reset #cw_dist temp
scoreboard players reset #ccw_dist temp
scoreboard players reset #dirflag temp
