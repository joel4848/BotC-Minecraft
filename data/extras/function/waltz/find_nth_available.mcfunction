# Find the nth available seat (where n is stored in executing player's WaltzTemp)

# Check seat 1

execute if score seat1 WaltzTemp matches 1 run scoreboard players add current_count WaltzTemp 1
execute if score current_count WaltzTemp = @s WaltzTemp if score found_seat WaltzTemp matches 0 run scoreboard players set found_seat WaltzTemp 1

# Check seat 2

execute if score seat2 WaltzTemp matches 1 if score found_seat WaltzTemp matches 0 run scoreboard players add current_count WaltzTemp 1
execute if score current_count WaltzTemp = @s WaltzTemp if score found_seat WaltzTemp matches 0 run scoreboard players set found_seat WaltzTemp 2

# Check seat 3

execute if score seat3 WaltzTemp matches 1 if score found_seat WaltzTemp matches 0 run scoreboard players add current_count WaltzTemp 1
execute if score current_count WaltzTemp = @s WaltzTemp if score found_seat WaltzTemp matches 0 run scoreboard players set found_seat WaltzTemp 3

# Check seat 4

execute if score seat4 WaltzTemp matches 1 if score found_seat WaltzTemp matches 0 run scoreboard players add current_count WaltzTemp 1
execute if score current_count WaltzTemp = @s WaltzTemp if score found_seat WaltzTemp matches 0 run scoreboard players set found_seat WaltzTemp 4

# Check seat 5

execute if score seat5 WaltzTemp matches 1 if score found_seat WaltzTemp matches 0 run scoreboard players add current_count WaltzTemp 1
execute if score current_count WaltzTemp = @s WaltzTemp if score found_seat WaltzTemp matches 0 run scoreboard players set found_seat WaltzTemp 5

# Check seat 6

execute if score seat6 WaltzTemp matches 1 if score found_seat WaltzTemp matches 0 run scoreboard players add current_count WaltzTemp 1
execute if score current_count WaltzTemp = @s WaltzTemp if score found_seat WaltzTemp matches 0 run scoreboard players set found_seat WaltzTemp 6

# Check seat 7

execute if score seat7 WaltzTemp matches 1 if score found_seat WaltzTemp matches 0 run scoreboard players add current_count WaltzTemp 1
execute if score current_count WaltzTemp = @s WaltzTemp if score found_seat WaltzTemp matches 0 run scoreboard players set found_seat WaltzTemp 7

# Check seat 8

execute if score seat8 WaltzTemp matches 1 if score found_seat WaltzTemp matches 0 run scoreboard players add current_count WaltzTemp 1
execute if score current_count WaltzTemp = @s WaltzTemp if score found_seat WaltzTemp matches 0 run scoreboard players set found_seat WaltzTemp 8

# Check seat 9

execute if score seat9 WaltzTemp matches 1 if score found_seat WaltzTemp matches 0 run scoreboard players add current_count WaltzTemp 1
execute if score current_count WaltzTemp = @s WaltzTemp if score found_seat WaltzTemp matches 0 run scoreboard players set found_seat WaltzTemp 9

# Check seat 10

execute if score seat10 WaltzTemp matches 1 if score found_seat WaltzTemp matches 0 run scoreboard players add current_count WaltzTemp 1
execute if score current_count WaltzTemp = @s WaltzTemp if score found_seat WaltzTemp matches 0 run scoreboard players set found_seat WaltzTemp 10

# Check seat 11

execute if score seat11 WaltzTemp matches 1 if score found_seat WaltzTemp matches 0 run scoreboard players add current_count WaltzTemp 1
execute if score current_count WaltzTemp = @s WaltzTemp if score found_seat WaltzTemp matches 0 run scoreboard players set found_seat WaltzTemp 11

# Check seat 12

execute if score seat12 WaltzTemp matches 1 if score found_seat WaltzTemp matches 0 run scoreboard players add current_count WaltzTemp 1
execute if score current_count WaltzTemp = @s WaltzTemp if score found_seat WaltzTemp matches 0 run scoreboard players set found_seat WaltzTemp 12

# Check seat 13

execute if score seat13 WaltzTemp matches 1 if score found_seat WaltzTemp matches 0 run scoreboard players add current_count WaltzTemp 1
execute if score current_count WaltzTemp = @s WaltzTemp if score found_seat WaltzTemp matches 0 run scoreboard players set found_seat WaltzTemp 13

# Check seat 14

execute if score seat14 WaltzTemp matches 1 if score found_seat WaltzTemp matches 0 run scoreboard players add current_count WaltzTemp 1
execute if score current_count WaltzTemp = @s WaltzTemp if score found_seat WaltzTemp matches 0 run scoreboard players set found_seat WaltzTemp 14

# Check seat 15

execute if score seat15 WaltzTemp matches 1 if score found_seat WaltzTemp matches 0 run scoreboard players add current_count WaltzTemp 1
execute if score current_count WaltzTemp = @s WaltzTemp if score found_seat WaltzTemp matches 0 run scoreboard players set found_seat WaltzTemp 15

# Check seat 16

execute if score seat16 WaltzTemp matches 1 if score found_seat WaltzTemp matches 0 run scoreboard players add current_count WaltzTemp 1
execute if score current_count WaltzTemp = @s WaltzTemp if score found_seat WaltzTemp matches 0 run scoreboard players set found_seat WaltzTemp 16