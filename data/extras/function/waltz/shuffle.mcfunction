# Waltz ability: Shuffle seats at start of night
# This function randomly reassigns all active players to new seats

# Create temporary scoreboards
scoreboard objectives add WaltzTemp dummy
scoreboard objectives add WaltzNewSeat dummy

# Store current player count
execute store result score player_count WaltzTemp run scoreboard players get player_count PlayerCount

# Create array of available seats (1 to player_count)
scoreboard players set seat1 WaltzTemp 1
scoreboard players set seat2 WaltzTemp 1
scoreboard players set seat3 WaltzTemp 1
scoreboard players set seat4 WaltzTemp 1
scoreboard players set seat5 WaltzTemp 1
scoreboard players set seat6 WaltzTemp 1
scoreboard players set seat7 WaltzTemp 1
scoreboard players set seat8 WaltzTemp 1
scoreboard players set seat9 WaltzTemp 1
scoreboard players set seat10 WaltzTemp 1
scoreboard players set seat11 WaltzTemp 1
scoreboard players set seat12 WaltzTemp 1
scoreboard players set seat13 WaltzTemp 1
scoreboard players set seat14 WaltzTemp 1
scoreboard players set seat15 WaltzTemp 1
scoreboard players set seat16 WaltzTemp 1

# Mark seats beyond player count as unavailable
execute if score player_count WaltzTemp matches ..15 run scoreboard players set seat16 WaltzTemp 0
execute if score player_count WaltzTemp matches ..14 run scoreboard players set seat15 WaltzTemp 0
execute if score player_count WaltzTemp matches ..13 run scoreboard players set seat14 WaltzTemp 0
execute if score player_count WaltzTemp matches ..12 run scoreboard players set seat13 WaltzTemp 0
execute if score player_count WaltzTemp matches ..11 run scoreboard players set seat12 WaltzTemp 0
execute if score player_count WaltzTemp matches ..10 run scoreboard players set seat11 WaltzTemp 0
execute if score player_count WaltzTemp matches ..9 run scoreboard players set seat10 WaltzTemp 0
execute if score player_count WaltzTemp matches ..8 run scoreboard players set seat9 WaltzTemp 0
execute if score player_count WaltzTemp matches ..7 run scoreboard players set seat8 WaltzTemp 0
execute if score player_count WaltzTemp matches ..6 run scoreboard players set seat7 WaltzTemp 0
execute if score player_count WaltzTemp matches ..5 run scoreboard players set seat6 WaltzTemp 0

# Count available seats
scoreboard players operation available_seats WaltzTemp = player_count WaltzTemp

# Assign each player a new random seat (but don't apply yet)
execute as @a[scores={Player=..-1}] run function extras:waltz/assign_random_seat

# Apply all assignments at once by having each player run their own assignment
execute as @a[scores={WaltzNewSeat=1}] run function extras:waltz/apply_seat_1
execute as @a[scores={WaltzNewSeat=2}] run function extras:waltz/apply_seat_2
execute as @a[scores={WaltzNewSeat=3}] run function extras:waltz/apply_seat_3
execute as @a[scores={WaltzNewSeat=4}] run function extras:waltz/apply_seat_4
execute as @a[scores={WaltzNewSeat=5}] run function extras:waltz/apply_seat_5
execute as @a[scores={WaltzNewSeat=6}] run function extras:waltz/apply_seat_6
execute as @a[scores={WaltzNewSeat=7}] run function extras:waltz/apply_seat_7
execute as @a[scores={WaltzNewSeat=8}] run function extras:waltz/apply_seat_8
execute as @a[scores={WaltzNewSeat=9}] run function extras:waltz/apply_seat_9
execute as @a[scores={WaltzNewSeat=10}] run function extras:waltz/apply_seat_10
execute as @a[scores={WaltzNewSeat=11}] run function extras:waltz/apply_seat_11
execute as @a[scores={WaltzNewSeat=12}] run function extras:waltz/apply_seat_12
execute as @a[scores={WaltzNewSeat=13}] run function extras:waltz/apply_seat_13
execute as @a[scores={WaltzNewSeat=14}] run function extras:waltz/apply_seat_14
execute as @a[scores={WaltzNewSeat=15}] run function extras:waltz/apply_seat_15
execute as @a[scores={WaltzNewSeat=16}] run function extras:waltz/apply_seat_16

# Clean up temporary scoreboards
scoreboard objectives remove WaltzTemp
scoreboard objectives remove WaltzNewSeat

# Teleport players to new seats

function teleport:tp_all_to_seats

