# Remove dummy oxidised copper blocks

execute if block 175 92 3 minecraft:obsidian run setblock 175 93 3 minecraft:air
execute if block 173 92 7 minecraft:obsidian run setblock 173 93 7 minecraft:air
execute if block 169 92 9 minecraft:obsidian run setblock 169 93 9 minecraft:air
execute if block 165 92 9 minecraft:obsidian run setblock 165 93 9 minecraft:air
execute if block 161 92 7 minecraft:obsidian run setblock 161 93 7 minecraft:air
execute if block 159 92 3 minecraft:obsidian run setblock 159 93 3 minecraft:air
execute if block 159 92 -1 minecraft:obsidian run setblock 159 93 -1 minecraft:air
execute if block 161 92 -5 minecraft:obsidian run setblock 161 93 -5 minecraft:air
execute if block 165 92 -7 minecraft:obsidian run setblock 165 93 -7 minecraft:air
execute if block 169 92 -7 minecraft:obsidian run setblock 169 93 -7 minecraft:air
execute if block 173 92 -5 minecraft:obsidian run setblock 173 93 -5 minecraft:air
execute if block 175 92 -1 minecraft:obsidian run setblock 175 93 -1 minecraft:air

execute if block 175 92 3 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 175 93 3 minecraft:air
execute if block 173 92 7 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 173 93 7 minecraft:air
execute if block 169 92 9 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 169 93 9 minecraft:air
execute if block 165 92 9 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 165 93 9 minecraft:air
execute if block 161 92 7 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 161 93 7 minecraft:air
execute if block 159 92 3 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 159 93 3 minecraft:air
execute if block 159 92 -1 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 159 93 -1 minecraft:air
execute if block 161 92 -5 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 161 93 -5 minecraft:air
execute if block 165 92 -7 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 165 93 -7 minecraft:air
execute if block 169 92 -7 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 169 93 -7 minecraft:air
execute if block 173 92 -5 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 173 93 -5 minecraft:air
execute if block 175 92 -1 minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock 175 93 -1 minecraft:air

# Remove Question Mark blocks

kill @e[tag=questionmark]

# Set HideGhostVotes score to 0

scoreboard players set #global HideGhostVotes 0

# Place redstone to create particles

# setblock 205 84 -6 minecraft:air
# setblock 205 84 -5 minecraft:air
# setblock 205 84 -4 minecraft:air
# setblock 205 84 -3 minecraft:air
# setblock 205 84 -2 minecraft:air
# setblock 205 84 -1 minecraft:air
# setblock 205 84 0 minecraft:air
# setblock 205 84 1 minecraft:air
# setblock 205 84 2 minecraft:air
# setblock 205 84 3 minecraft:air
# setblock 205 84 4 minecraft:air
# setblock 205 84 5 minecraft:air