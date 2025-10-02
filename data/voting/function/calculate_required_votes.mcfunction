# Calculates how many votes are needed (half living players rounded up)

# Count living players using the Alive scoreboard

scoreboard players set #living_count temp 0
execute as @a[scores={Alive=1}] run scoreboard players add #living_count temp 1

# Calculate half rounded up: (living_count + 1) / 2

scoreboard players operation #required_votes temp = #living_count temp
scoreboard players add #required_votes temp 1
scoreboard players operation #required_votes temp /= #2 const