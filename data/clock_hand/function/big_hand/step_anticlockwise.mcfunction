# next_pos = current_pos - 1 (wrap 0 -> 16)
scoreboard players operation #next_pos temp = #big_hand_current_pos temp
scoreboard players remove #next_pos temp 1
# If current_pos was 1 -> next_pos becomes 0; wrap 0 -> 16
execute if score #next_pos temp matches ..0 run scoreboard players set #next_pos temp 16
