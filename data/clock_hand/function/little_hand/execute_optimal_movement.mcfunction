# Determine optimal direction and execute the movement
# Uses the calculated clockwise and anticlockwise distances

# Set the number of steps to move (default to clockwise)
scoreboard players operation #little_hand_steps_to_move temp = #little_hand_clockwise_steps temp

# If anticlockwise is shorter, use anticlockwise steps
execute if score #little_hand_anticlockwise_steps temp < #little_hand_clockwise_steps temp run scoreboard players operation #little_hand_steps_to_move temp = #little_hand_anticlockwise_steps temp

# Calculate the interpolation time (steps * speed_multiplier)
execute store result score #little_hand_interpolation_time temp run data get storage joelbotc little_hand_speed_multiplier
scoreboard players operation #little_hand_interpolation_time temp *= #little_hand_steps_to_move temp

# Store the interpolation time
execute store result storage joelbotc little_hand_speed int 1 run scoreboard players get #little_hand_interpolation_time temp

# Update the current position tracker
scoreboard players operation #little_hand_current_pos temp = #little_hand_target_pos temp

# Execute the rotation to target position
function clock_hand:little_hand/rotate_to_target