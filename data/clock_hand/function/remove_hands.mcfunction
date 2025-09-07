# Remove big hand

kill @e[type=minecraft:block_display,tag=big_hand]

scoreboard players set #big_hand_present temp 0

scoreboard players set #big_hand_current_pos temp 0

# Remove little hand

kill @e[type=minecraft:block_display,tag=little_hand]

scoreboard players set #little_hand_present temp 0

scoreboard players set #little_hand_current_pos temp 0