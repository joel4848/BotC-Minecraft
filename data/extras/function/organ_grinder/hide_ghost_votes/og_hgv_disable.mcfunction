scoreboard players set #HGV_enabled temp 0

# Set OG temp votelights

schedule function extras:organ_grinder/og_votelights 2t replace


function extras:organ_grinder/hide_ghost_votes/set_scores

schedule function extras:organ_grinder/hide_ghost_votes/set_unhide_stacks 4t


function extras:organ_grinder/og_place_blocks

# Replace used ghost votes with air

# execute if score @a[scores={Player=-1},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight1] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-2},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight2] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-3},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight3] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-4},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight4] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-5},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight5] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-6},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight6] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-7},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight7] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-8},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight8] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-9},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight9] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-10},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight10] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-11},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight11] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-12},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight12] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-13},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight13] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-14},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight14] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-15},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight15] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-16},limit=1] GhostVoteUsedToday matches 1 run execute as @e[type=marker,tag=votelight16] at @s run setblock ~ ~ ~ air

# Replace unused ghost votes with waxed oxidised copper bulbs

# execute if score @a[scores={Player=-1},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight1] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-2},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight2] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-3},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight3] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-4},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight4] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-5},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight5] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-6},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight6] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-7},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight7] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-8},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight8] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-9},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight9] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-10},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight10] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-11},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight11] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-12},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight12] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-13},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight13] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-14},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight14] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-15},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight15] at @s run setblock ~ ~ ~ air
# execute if score @a[scores={Player=-16},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight16] at @s run setblock ~ ~ ~ air

# Trigger Piston Block Update

# execute if score @a[scores={Player=-1},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight1] at @s run setblock ~ ~-2 ~-1 orange_wool destroy
# execute if score @a[scores={Player=-2},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight2] at @s run setblock ~ ~-2 ~-1 orange_wool destroy
# execute if score @a[scores={Player=-3},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight3] at @s run setblock ~ ~-2 ~-1 orange_wool destroy
# execute if score @a[scores={Player=-4},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight4] at @s run setblock ~ ~-2 ~-1 orange_wool destroy
# execute if score @a[scores={Player=-5},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight5] at @s run setblock ~1 ~-2 ~ orange_wool destroy
# execute if score @a[scores={Player=-6},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight6] at @s run setblock ~1 ~-2 ~ orange_wool destroy
# execute if score @a[scores={Player=-7},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight7] at @s run setblock ~1 ~-2 ~ orange_wool destroy
# execute if score @a[scores={Player=-8},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight8] at @s run setblock ~1 ~-2 ~ orange_wool destroy
# execute if score @a[scores={Player=-9},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight9] at @s run setblock ~ ~-2 ~1 orange_wool destroy
# execute if score @a[scores={Player=-10},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight10] at @s run setblock ~ ~-2 ~1 air
# execute if score @a[scores={Player=-11},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight11] at @s run setblock ~ ~-2 ~1 air
# execute if score @a[scores={Player=-12},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight12] at @s run setblock ~ ~-2 ~1 air
# execute if score @a[scores={Player=-13},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight13] at @s run setblock ~-1 ~-2 ~ air
# execute if score @a[scores={Player=-14},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight14] at @s run setblock ~-1 ~-2 ~ air
# execute if score @a[scores={Player=-15},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight15] at @s run setblock ~-1 ~-2 ~ air
# execute if score @a[scores={Player=-16},limit=1] GhostVoteUnusedToday matches 1 run execute as @e[type=marker,tag=votelight16] at @s run setblock ~-1 ~-2 ~ air

# Remove questionmarks

# kill @e[tag=questionmark]