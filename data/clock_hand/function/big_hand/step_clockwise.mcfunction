# next_pos = current_pos + 1 (wrap 17 -> 1)
scoreboard players operation #next_pos temp = #big_hand_current_pos temp
scoreboard players add #next_pos temp 1
# If next_pos == 17, wrap to 1
execute if score #next_pos temp matches 17.. run scoreboard players remove #next_pos temp 16
