# Main function to move the little hand to target position
# Expects: #little_hand_current_pos temp and #little_hand_target_pos temp to be set

execute if score #little_hand_present temp matches 0 run function clock_hand:little_hand/summon_neutral
scoreboard players set #little_hand_present temp 1

# Calculate clockwise distance

function clock_hand:little_hand/calculate_clockwise_distance

# Calculate anticlockwise distance

function clock_hand:little_hand/calculate_anticlockwise_distance

# Determine optimal direction and execute movement

execute unless score #little_hand_current_pos temp = #little_hand_target_pos temp run schedule function clock_hand:little_hand/execute_optimal_movement 10t