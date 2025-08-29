scoreboard players set #HGV_enabled temp 1

function extras:organ_grinder/og_remove_votelights

# function extras:organ_grinder/hide_ghost_votes/set_scores

schedule function extras:organ_grinder/hide_ghost_votes/set_hide_stacks 2t

schedule function extras:organ_grinder/hide_ghost_votes/og_questionmark 3t


# Remove OG votelights

schedule function extras:organ_grinder/og_remove_votelights 5t

schedule function extras:organ_grinder/og_remove_blocks 10t


# If dead player has used ghost vote, set their score on GhostVoteUsedToday to 1

# execute as @e[tag=votelight1] if score #seat temp matches 1 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-1}] GhostVoteUsedToday 1
# execute as @e[tag=votelight2] if score #seat temp matches 2 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-2}] GhostVoteUsedToday 1
# execute as @e[tag=votelight3] if score #seat temp matches 3 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-3}] GhostVoteUsedToday 1
# execute as @e[tag=votelight4] if score #seat temp matches 4 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-4}] GhostVoteUsedToday 1
# execute as @e[tag=votelight5] if score #seat temp matches 5 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-5}] GhostVoteUsedToday 1
# execute as @e[tag=votelight6] if score #seat temp matches 6 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-6}] GhostVoteUsedToday 1
# execute as @e[tag=votelight7] if score #seat temp matches 7 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-7}] GhostVoteUsedToday 1
# execute as @e[tag=votelight8] if score #seat temp matches 8 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-8}] GhostVoteUsedToday 1
# execute as @e[tag=votelight9] if score #seat temp matches 9 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-9}] GhostVoteUsedToday 1
# execute as @e[tag=votelight10] if score #seat temp matches 10 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-10}] GhostVoteUsedToday 1
# execute as @e[tag=votelight11] if score #seat temp matches 11 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-11}] GhostVoteUsedToday 1
# execute as @e[tag=votelight12] if score #seat temp matches 12 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-12}] GhostVoteUsedToday 1
# execute as @e[tag=votelight13] if score #seat temp matches 13 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-13}] GhostVoteUsedToday 1
# execute as @e[tag=votelight14] if score #seat temp matches 14 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-14}] GhostVoteUsedToday 1
# execute as @e[tag=votelight15] if score #seat temp matches 15 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-15}] GhostVoteUsedToday 1
# execute as @e[tag=votelight16] if score #seat temp matches 16 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-16}] GhostVoteUsedToday 1

# If dead player has not used ghost vote, set their score on GhostVoteUnusedToday to 1

# execute as @e[tag=votelight1] if score #seat temp matches 1 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-1}] GhostVoteUnusedToday 1
# execute as @e[tag=votelight2] if score #seat temp matches 2 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-2}] GhostVoteUnusedToday 1
# execute as @e[tag=votelight3] if score #seat temp matches 3 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-3}] GhostVoteUnusedToday 1
# execute as @e[tag=votelight4] if score #seat temp matches 4 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-4}] GhostVoteUnusedToday 1
# execute as @e[tag=votelight5] if score #seat temp matches 5 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-5}] GhostVoteUnusedToday 1
# execute as @e[tag=votelight6] if score #seat temp matches 6 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-6}] GhostVoteUnusedToday 1
# execute as @e[tag=votelight7] if score #seat temp matches 7 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-7}] GhostVoteUnusedToday 1
# execute as @e[tag=votelight8] if score #seat temp matches 8 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-8}] GhostVoteUnusedToday 1
# execute as @e[tag=votelight9] if score #seat temp matches 9 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-9}] GhostVoteUnusedToday 1
# execute as @e[tag=votelight10] if score #seat temp matches 10 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-10}] GhostVoteUnusedToday 1
# execute as @e[tag=votelight11] if score #seat temp matches 11 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-11}] GhostVoteUnusedToday 1
# execute as @e[tag=votelight12] if score #seat temp matches 12 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-12}] GhostVoteUnusedToday 1
# execute as @e[tag=votelight13] if score #seat temp matches 13 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-13}] GhostVoteUnusedToday 1
# execute as @e[tag=votelight14] if score #seat temp matches 14 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-14}] GhostVoteUnusedToday 1
# execute as @e[tag=votelight15] if score #seat temp matches 15 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-15}] GhostVoteUnusedToday 1
# execute as @e[tag=votelight16] if score #seat temp matches 16 run execute at @s if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players set @a[scores={Player=-16}] GhostVoteUnusedToday 1




# Replace used ghost votes with reinforced deepslate

# execute if score @a[scores={Player=-1},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight1] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-2},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight2] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-3},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight3] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-4},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight4] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-5},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight5] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-6},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight6] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-7},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight7] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-8},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight8] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-9},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight9] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-10},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight10] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-11},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight11] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-12},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight12] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-13},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight13] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-14},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight14] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-15},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight15] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-16},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight16] at @s run setblock ~ ~ ~ reinforced_deepslate

# Replace unused ghost votes with reinforced deepslate

# execute if score @a[scores={Player=-1},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight1] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-2},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight2] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-3},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight3] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-4},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight4] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-5},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight5] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-6},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight6] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-7},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight7] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-8},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight8] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-9},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight9] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-10},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight10] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-11},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight11] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-12},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight12] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-13},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight13] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-14},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight14] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-15},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight15] at @s run setblock ~ ~ ~ reinforced_deepslate
# execute if score @a[scores={Player=-16},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight16] at @s run setblock ~ ~ ~ reinforced_deepslate

# Place questionmark blocks

# function extras:organ_grinder/hide_ghost_votes/og_questionmark