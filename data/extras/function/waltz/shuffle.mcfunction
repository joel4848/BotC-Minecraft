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
scoreboard players reset @a Player

# Apply all assignments at once by having each player run their own assignment

schedule function extras:waltz/apply_seat_1 1t
schedule function extras:waltz/apply_seat_2 2t
schedule function extras:waltz/apply_seat_3 3t
schedule function extras:waltz/apply_seat_4 4t
schedule function extras:waltz/apply_seat_5 5t
schedule function extras:waltz/apply_seat_6 6t
schedule function extras:waltz/apply_seat_7 7t
schedule function extras:waltz/apply_seat_8 8t
schedule function extras:waltz/apply_seat_9 9t
schedule function extras:waltz/apply_seat_10 10t
schedule function extras:waltz/apply_seat_11 11t
schedule function extras:waltz/apply_seat_12 12t
schedule function extras:waltz/apply_seat_13 13t
schedule function extras:waltz/apply_seat_14 14t
schedule function extras:waltz/apply_seat_15 15t
schedule function extras:waltz/apply_seat_16 16t

# Clean up

schedule function extras:waltz/clean_up 17t