# Assigns the executing player to a random available seat
# Stores the assignment in WaltzNewSeat but doesn't apply it yet

# Generate random number from 1 to available_seats

execute store result score @s WaltzTemp run random value 1..16
scoreboard players operation @s WaltzTemp %= available_seats WaltzTemp
scoreboard players add @s WaltzTemp 1

# Find the nth available seat

scoreboard players set current_count WaltzTemp 0
scoreboard players set found_seat WaltzTemp 0
execute as @s run function extras:waltz/find_nth_available

# Store the assigned seat for later application

scoreboard players operation @s WaltzNewSeat = found_seat WaltzTemp

# Mark this seat as taken

execute if score found_seat WaltzTemp matches 1 run scoreboard players set seat1 WaltzTemp 0
execute if score found_seat WaltzTemp matches 2 run scoreboard players set seat2 WaltzTemp 0
execute if score found_seat WaltzTemp matches 3 run scoreboard players set seat3 WaltzTemp 0
execute if score found_seat WaltzTemp matches 4 run scoreboard players set seat4 WaltzTemp 0
execute if score found_seat WaltzTemp matches 5 run scoreboard players set seat5 WaltzTemp 0
execute if score found_seat WaltzTemp matches 6 run scoreboard players set seat6 WaltzTemp 0
execute if score found_seat WaltzTemp matches 7 run scoreboard players set seat7 WaltzTemp 0
execute if score found_seat WaltzTemp matches 8 run scoreboard players set seat8 WaltzTemp 0
execute if score found_seat WaltzTemp matches 9 run scoreboard players set seat9 WaltzTemp 0
execute if score found_seat WaltzTemp matches 10 run scoreboard players set seat10 WaltzTemp 0
execute if score found_seat WaltzTemp matches 11 run scoreboard players set seat11 WaltzTemp 0
execute if score found_seat WaltzTemp matches 12 run scoreboard players set seat12 WaltzTemp 0
execute if score found_seat WaltzTemp matches 13 run scoreboard players set seat13 WaltzTemp 0
execute if score found_seat WaltzTemp matches 14 run scoreboard players set seat14 WaltzTemp 0
execute if score found_seat WaltzTemp matches 15 run scoreboard players set seat15 WaltzTemp 0
execute if score found_seat WaltzTemp matches 16 run scoreboard players set seat16 WaltzTemp 0

# Reduce available seat count

scoreboard players remove available_seats WaltzTemp 1