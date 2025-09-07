# Calculate clockwise distance from current position to target position
# Result stored in #little_hand_clockwise_steps temp

# Copy current and target positions to working variables
scoreboard players operation #little_hand_current_working temp = #little_hand_current_pos temp
scoreboard players operation #little_hand_target_working temp = #little_hand_target_pos temp

# Handle edge cases where positions are 0 (convert to 16 for calculation)
execute if score #little_hand_current_working temp matches 0 run scoreboard players set #little_hand_current_working temp 16
execute if score #little_hand_target_working temp matches 0 run scoreboard players set #little_hand_target_working temp 16

# Calculate clockwise distance
scoreboard players operation #little_hand_clockwise_steps temp = #little_hand_target_working temp
scoreboard players operation #little_hand_clockwise_steps temp -= #little_hand_current_working temp

# If result is negative or zero, add 16 to get the clockwise distance
execute if score #little_hand_clockwise_steps temp matches ..0 run scoreboard players add #little_hand_clockwise_steps temp 16