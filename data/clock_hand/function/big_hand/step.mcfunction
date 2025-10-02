# tellraw @a ["",{"text":"[big_hand step] cur="},{"score":{"name":"#big_hand_current_pos","objective":"temp"}},{"text":" tgt="},{"score":{"name":"#big_hand_target","objective":"temp"}},{"text":" next="},{"score":{"name":"#next_pos","objective":"temp"}},{"text":" dir="},{"score":{"name":"#dirflag","objective":"temp"}},{"text":" cw="},{"score":{"name":"#cw_dist","objective":"temp"}},{"text":" ccw="},{"score":{"name":"#ccw_dist","objective":"temp"}}]

# ---- EARLY EXIT: already at target ----

execute if score #big_hand_current_pos temp = #big_hand_target temp run function clock_hand:big_hand/finish

# ---- COMPUTE DISTANCES FOR TARGETS 1-16 ----

execute unless score #big_hand_current_pos temp = #big_hand_target temp unless score #big_hand_target temp matches 0 run scoreboard players operation #cw_dist temp = #big_hand_target temp
execute unless score #big_hand_current_pos temp = #big_hand_target temp unless score #big_hand_target temp matches 0 run scoreboard players add #cw_dist temp 16
execute unless score #big_hand_current_pos temp = #big_hand_target temp unless score #big_hand_target temp matches 0 run scoreboard players operation #cw_dist temp -= #big_hand_current_pos temp
execute unless score #big_hand_current_pos temp = #big_hand_target temp unless score #big_hand_target temp matches 0 if score #cw_dist temp matches 16.. run scoreboard players remove #cw_dist temp 16

execute unless score #big_hand_current_pos temp = #big_hand_target temp unless score #big_hand_target temp matches 0 run scoreboard players set #ccw_dist temp 16
execute unless score #big_hand_current_pos temp = #big_hand_target temp unless score #big_hand_target temp matches 0 run scoreboard players operation #ccw_dist temp -= #cw_dist temp
execute unless score #big_hand_current_pos temp = #big_hand_target temp unless score #big_hand_target temp matches 0 if score #ccw_dist temp matches 16.. run scoreboard players remove #ccw_dist temp 16

# ---- COMPUTE DISTANCES FOR TARGET 0 ----
# For target 0: clockwise means go toward 16, counter-clockwise means go toward 1

execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #big_hand_target temp matches 0 run scoreboard players set #cw_dist temp 17
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #big_hand_target temp matches 0 run scoreboard players operation #cw_dist temp -= #big_hand_current_pos temp

execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #big_hand_target temp matches 0 run scoreboard players operation #ccw_dist temp = #big_hand_current_pos temp

# ---- DETERMINE DIRECTION (ties go clockwise) ----

execute unless score #big_hand_current_pos temp = #big_hand_target temp run scoreboard players set #dirflag temp 1
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #cw_dist temp > #ccw_dist temp run scoreboard players set #dirflag temp 0

# ---- CHOOSE NEXT POSITION ----
# For target 0: only step to 0 if we're at position 16 (clockwise) or 1 (counter-clockwise)

execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #big_hand_target temp matches 0 if score #dirflag temp matches 1 if score #big_hand_current_pos temp matches 16 run scoreboard players set #next_pos temp 0
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #big_hand_target temp matches 0 if score #dirflag temp matches 0 if score #big_hand_current_pos temp matches 1 run scoreboard players set #next_pos temp 0

# For target 0: if we're not at the adjacent positions (1 or 16), step normally toward them

execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #big_hand_target temp matches 0 unless score #big_hand_current_pos temp matches 1 unless score #big_hand_current_pos temp matches 16 if score #dirflag temp matches 1 run function clock_hand:big_hand/step_clockwise
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #big_hand_target temp matches 0 unless score #big_hand_current_pos temp matches 1 unless score #big_hand_current_pos temp matches 16 if score #dirflag temp matches 0 run function clock_hand:big_hand/step_anticlockwise

# Normal stepping for targets 1-16

execute unless score #big_hand_current_pos temp = #big_hand_target temp unless score #big_hand_target temp matches 0 if score #dirflag temp matches 1 run function clock_hand:big_hand/step_clockwise
execute unless score #big_hand_current_pos temp = #big_hand_target temp unless score #big_hand_target temp matches 0 if score #dirflag temp matches 0 run function clock_hand:big_hand/step_anticlockwise

# ---- ROTATE TO NEXT POSITION ----

execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #next_pos temp matches 0 run function clock_hand:big_hand/rotate_to_0 with storage joelbotc
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #next_pos temp matches 1 run function clock_hand:big_hand/rotate_to_1 with storage joelbotc
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #next_pos temp matches 2 run function clock_hand:big_hand/rotate_to_2 with storage joelbotc
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #next_pos temp matches 3 run function clock_hand:big_hand/rotate_to_3 with storage joelbotc
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #next_pos temp matches 4 run function clock_hand:big_hand/rotate_to_4 with storage joelbotc
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #next_pos temp matches 5 run function clock_hand:big_hand/rotate_to_5 with storage joelbotc
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #next_pos temp matches 6 run function clock_hand:big_hand/rotate_to_6 with storage joelbotc
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #next_pos temp matches 7 run function clock_hand:big_hand/rotate_to_7 with storage joelbotc
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #next_pos temp matches 8 run function clock_hand:big_hand/rotate_to_8 with storage joelbotc
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #next_pos temp matches 9 run function clock_hand:big_hand/rotate_to_9 with storage joelbotc
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #next_pos temp matches 10 run function clock_hand:big_hand/rotate_to_10 with storage joelbotc
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #next_pos temp matches 11 run function clock_hand:big_hand/rotate_to_11 with storage joelbotc
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #next_pos temp matches 12 run function clock_hand:big_hand/rotate_to_12 with storage joelbotc
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #next_pos temp matches 13 run function clock_hand:big_hand/rotate_to_13 with storage joelbotc
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #next_pos temp matches 14 run function clock_hand:big_hand/rotate_to_14 with storage joelbotc
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #next_pos temp matches 15 run function clock_hand:big_hand/rotate_to_15 with storage joelbotc
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #next_pos temp matches 16 run function clock_hand:big_hand/rotate_to_16 with storage joelbotc

# ---- UPDATE CURRENT POSITION ----

execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #next_pos temp matches 0 run scoreboard players set #big_hand_current_pos temp 0
execute unless score #big_hand_current_pos temp = #big_hand_target temp if score #next_pos temp matches 1..16 run scoreboard players operation #big_hand_current_pos temp = #next_pos temp

# ---- FINISH OR SCHEDULE NEXT STEP ----

execute if score #big_hand_current_pos temp = #big_hand_target temp run function clock_hand:big_hand/finish
execute unless score #big_hand_current_pos temp = #big_hand_target temp run schedule function clock_hand:big_hand/step 5t replace