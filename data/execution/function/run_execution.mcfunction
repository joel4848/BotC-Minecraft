scoreboard players set #og_enabled temp 0

# Actual execution

# tp @a[scores={Marked=1}] 167.52 93.50 2.50
# setblock 167 91 2 minecraft:honey_block
# 
# schedule function execution:drop_anvil 10t
# 
# schedule function execution:finish_execution 80t

execute as @a run fmvariable set lock_to_seats false false

execute if score #lock_to_seats temp matches 0 run scoreboard players set #was_lts_enabled temp 0
execute if score #lock_to_seats temp matches 1 run scoreboard players set #was_lts_enabled temp 1

scoreboard players set #lock_to_seats temp 0
execute as @a run fmvariable set lock_to_seats false false

function clock_hand:remove_hands

function execution:dumb/dumb_process

# Hide scoreboard, so more room for execution message

scoreboard objectives setdisplay sidebar