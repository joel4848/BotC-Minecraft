
# Place dummy oxidised copper blocks

execute if block 175 92 3 minecraft:obsidian run setblock 175 93 3 minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block 175 92 3 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 175 93 3 minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block 173 92 7 minecraft:obsidian run setblock 173 93 7 minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block 173 92 7 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 173 93 7 minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block 169 92 9 minecraft:obsidian run setblock 169 93 9 minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block 169 92 9 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 169 93 9 minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block 165 92 9 minecraft:obsidian run setblock 165 93 9 minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block 165 92 9 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 165 93 9 minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block 161 92 7 minecraft:obsidian run setblock 161 93 7 minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block 161 92 7 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 161 93 7 minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block 159 92 3 minecraft:obsidian run setblock 159 93 3 minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block 159 92 3 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 159 93 3 minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block 159 92 -1 minecraft:obsidian run setblock 159 93 -1 minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block 159 92 -1 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 159 93 -1 minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block 161 92 -5 minecraft:obsidian run setblock 161 93 -5 minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block 161 92 -5 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 161 93 -5 minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block 165 92 -7 minecraft:obsidian run setblock 165 93 -7 minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block 165 92 -7 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 165 93 -7 minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block 169 92 -7 minecraft:obsidian run setblock 169 93 -7 minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block 169 92 -7 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 169 93 -7 minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block 173 92 -5 minecraft:obsidian run setblock 173 93 -5 minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block 173 92 -5 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 173 93 -5 minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block 175 92 -1 minecraft:obsidian run setblock 175 93 -1 minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block 175 92 -1 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 175 93 -1 minecraft:waxed_oxidized_copper_bulb[lit=false]

# Run add question mark block

execute positioned 175 93 3 run execute if block ~ ~ ~ minecraft:waxed_oxidized_copper_bulb[lit=false] run function joelbotc:questionmark
execute positioned 173 93 7 run execute if block ~ ~ ~ minecraft:waxed_oxidized_copper_bulb[lit=false] run function joelbotc:questionmark
execute positioned 169 93 9 run execute if block ~ ~ ~ minecraft:waxed_oxidized_copper_bulb[lit=false] run function joelbotc:questionmark
execute positioned 165 93 9 run execute if block ~ ~ ~ minecraft:waxed_oxidized_copper_bulb[lit=false] run function joelbotc:questionmark
execute positioned 161 93 7 run execute if block ~ ~ ~ minecraft:waxed_oxidized_copper_bulb[lit=false] run function joelbotc:questionmark
execute positioned 159 93 3 run execute if block ~ ~ ~ minecraft:waxed_oxidized_copper_bulb[lit=false] run function joelbotc:questionmark
execute positioned 159 93 -1 run execute if block ~ ~ ~ minecraft:waxed_oxidized_copper_bulb[lit=false] run function joelbotc:questionmark
execute positioned 161 93 -5 run execute if block ~ ~ ~ minecraft:waxed_oxidized_copper_bulb[lit=false] run function joelbotc:questionmark
execute positioned 165 93 -7 run execute if block ~ ~ ~ minecraft:waxed_oxidized_copper_bulb[lit=false] run function joelbotc:questionmark
execute positioned 169 93 -7 run execute if block ~ ~ ~ minecraft:waxed_oxidized_copper_bulb[lit=false] run function joelbotc:questionmark
execute positioned 173 93 -5 run execute if block ~ ~ ~ minecraft:waxed_oxidized_copper_bulb[lit=false] run function joelbotc:questionmark
execute positioned 175 93 -1 run execute if block ~ ~ ~ minecraft:waxed_oxidized_copper_bulb[lit=false] run function joelbotc:questionmark

# Create HideGhostVotes scoreboard & set to 1

scoreboard objectives add HideGhostVotes dummy
scoreboard players set #global HideGhostVotes 1

# Start hgv_particles function

function joelbotc:hgv_particles

# Place redstone to create particles

# execute if block 175 93 3 minecraft:waxed_oxidized_copper_bulb[lit=false] run setblock 205 84 -6 minecraft:redstone_block
# execute if block 173 93 7 minecraft:waxed_oxidized_copper_bulb[lit=false] run setblock 205 84 -5 minecraft:redstone_block
# execute if block 169 93 9 minecraft:waxed_oxidized_copper_bulb[lit=false] run setblock 205 84 -4 minecraft:redstone_block
# execute if block 165 93 9 minecraft:waxed_oxidized_copper_bulb[lit=false] run setblock 205 84 -3 minecraft:redstone_block
# execute if block 161 93 7 minecraft:waxed_oxidized_copper_bulb[lit=false] run setblock 205 84 -2 minecraft:redstone_block
# execute if block 159 93 3 minecraft:waxed_oxidized_copper_bulb[lit=false] run setblock 205 84 -1 minecraft:redstone_block
# execute if block 159 93 -1 minecraft:waxed_oxidized_copper_bulb[lit=false] run setblock 205 84 0 minecraft:redstone_block
# execute if block 161 93 -5 minecraft:waxed_oxidized_copper_bulb[lit=false] run setblock 205 84 1 minecraft:redstone_block
# execute if block 165 93 -7 minecraft:waxed_oxidized_copper_bulb[lit=false] run setblock 205 84 2 minecraft:redstone_block
# execute if block 169 93 -7 minecraft:waxed_oxidized_copper_bulb[lit=false] run setblock 205 84 3 minecraft:redstone_block
# execute if block 173 93 -5 minecraft:waxed_oxidized_copper_bulb[lit=false] run setblock 205 84 4 minecraft:redstone_block
# execute if block 175 93 -1 minecraft:waxed_oxidized_copper_bulb[lit=false] run setblock 205 84 5 minecraft:redstone_block