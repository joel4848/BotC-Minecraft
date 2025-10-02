# tellraw @a ["",{"text":"[big_hand start] cur="},{"score":{"name":"#big_hand_current_pos","objective":"temp"}},{"text":" tgt="},{"score":{"name":"#big_hand_target","objective":"temp"}}]

# Force the speed for this sequence

scoreboard players set #big_hand_speed temp 5
execute store result storage joelbotc big_hand_speed int 1 run scoreboard players get #big_hand_speed temp

# Clear any previous scheduled steps

schedule clear clock_hand:big_hand/step

# ---- EARLY EXIT: already at target ----

execute if score #big_hand_current_pos temp = #big_hand_target temp run function clock_hand:big_hand/finish

# ---- NORMAL STEPPING LOGIC (targets 1–16) ----
# Compute clockwise distance

execute unless score #big_hand_current_pos temp = #big_hand_target temp unless score #big_hand_target temp matches 0 run scoreboard players operation #cw_dist temp = #big_hand_target temp
execute unless score #big_hand_current_pos temp = #big_hand_target temp unless score #big_hand_target temp matches 0 run scoreboard players add #cw_dist temp 16
execute unless score #big_hand_current_pos temp = #big_hand_target temp unless score #big_hand_target temp matches 0 run scoreboard players operation #cw_dist temp -= #big_hand_current_pos temp
execute unless score #big_hand_current_pos temp = #big_hand_target temp unless score #big_hand_target temp matches 0 if score #cw_dist temp matches 16.. run scoreboard players remove #cw_dist temp 16

# Compute counter-clockwise distance

execute unless score #big_hand_current_pos temp = #big_hand_target temp unless score #big_hand_target temp matches 0 run scoreboard players set #ccw_dist temp 16
execute unless score #big_hand_current_pos temp = #big_hand_target temp unless score #big_hand_target temp matches 0 run scoreboard players operation #ccw_dist temp -= #cw_dist temp
execute unless score #big_hand_current_pos temp = #big_hand_target temp unless score #big_hand_target temp matches 0 if score #ccw_dist temp matches 16.. run scoreboard players remove #ccw_dist temp 16

# Determine direction (ties go clockwise)

execute unless score #big_hand_current_pos temp = #big_hand_target temp unless score #big_hand_target temp matches 0 run scoreboard players set #dirflag temp 1
execute unless score #big_hand_current_pos temp = #big_hand_target temp unless score #big_hand_target temp matches 0 if score #cw_dist temp > #ccw_dist temp run scoreboard players set #dirflag temp 0

# Start stepping for targets 1-16

execute unless score #big_hand_current_pos temp = #big_hand_target temp unless score #big_hand_target temp matches 0 run schedule function clock_hand:big_hand/step 10t

# ---- SPECIAL CASE: Storyteller / neutral target (0) ----
# For target 0: clockwise distance is 17 - current_pos, counter-clockwise is current_pos

execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #big_hand_target temp matches 0 run scoreboard players set #cw_dist temp 17
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #big_hand_target temp matches 0 run scoreboard players operation #cw_dist temp -= #big_hand_current_pos temp
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #big_hand_target temp matches 0 run scoreboard players operation #ccw_dist temp = #big_hand_current_pos temp

# Determine direction for target 0 (ties go clockwise)

execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #big_hand_target temp matches 0 run scoreboard players set #dirflag temp 1
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #big_hand_target temp matches 0 if score #cw_dist temp > #ccw_dist temp run scoreboard players set #dirflag temp 0

# Start stepping for target 0

execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #big_hand_target temp matches 0 run schedule function clock_hand:big_hand/step 10t