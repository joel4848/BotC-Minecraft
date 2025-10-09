# Set used unhide stacks

execute as @e[tag=votelight1] if score @a[scores={Player=-1},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-1},limit=1] GhostVoteUsedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/used_unhide_stack
execute as @e[tag=votelight2] if score @a[scores={Player=-2},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-2},limit=1] GhostVoteUsedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/used_unhide_stack
execute as @e[tag=votelight3] if score @a[scores={Player=-3},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-3},limit=1] GhostVoteUsedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/used_unhide_stack
execute as @e[tag=votelight4] if score @a[scores={Player=-4},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-4},limit=1] GhostVoteUsedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/used_unhide_stack
execute as @e[tag=votelight5] if score @a[scores={Player=-5},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-5},limit=1] GhostVoteUsedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/used_unhide_stack
execute as @e[tag=votelight6] if score @a[scores={Player=-6},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-6},limit=1] GhostVoteUsedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/used_unhide_stack
execute as @e[tag=votelight7] if score @a[scores={Player=-7},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-7},limit=1] GhostVoteUsedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/used_unhide_stack
execute as @e[tag=votelight8] if score @a[scores={Player=-8},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-8},limit=1] GhostVoteUsedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/used_unhide_stack
execute as @e[tag=votelight9] if score @a[scores={Player=-9},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-9},limit=1] GhostVoteUsedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/used_unhide_stack
execute as @e[tag=votelight10] if score @a[scores={Player=-10},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-10},limit=1] GhostVoteUsedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/used_unhide_stack
execute as @e[tag=votelight11] if score @a[scores={Player=-11},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-11},limit=1] GhostVoteUsedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/used_unhide_stack
execute as @e[tag=votelight12] if score @a[scores={Player=-12},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-12},limit=1] GhostVoteUsedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/used_unhide_stack
execute as @e[tag=votelight13] if score @a[scores={Player=-13},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-13},limit=1] GhostVoteUsedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/used_unhide_stack
execute as @e[tag=votelight14] if score @a[scores={Player=-14},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-14},limit=1] GhostVoteUsedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/used_unhide_stack
execute as @e[tag=votelight15] if score @a[scores={Player=-15},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-15},limit=1] GhostVoteUsedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/used_unhide_stack
execute as @e[tag=votelight16] if score @a[scores={Player=-16},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-16},limit=1] GhostVoteUsedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/used_unhide_stack

# Set unused unhide stacks

execute as @e[tag=votelight1] if score @a[scores={Player=-1},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-1},limit=1] GhostVoteUnusedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/unused_unhide_stack
execute as @e[tag=votelight2] if score @a[scores={Player=-2},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-2},limit=1] GhostVoteUnusedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/unused_unhide_stack
execute as @e[tag=votelight3] if score @a[scores={Player=-3},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-3},limit=1] GhostVoteUnusedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/unused_unhide_stack
execute as @e[tag=votelight4] if score @a[scores={Player=-4},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-4},limit=1] GhostVoteUnusedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/unused_unhide_stack
execute as @e[tag=votelight5] if score @a[scores={Player=-5},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-5},limit=1] GhostVoteUnusedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/unused_unhide_stack
execute as @e[tag=votelight6] if score @a[scores={Player=-6},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-6},limit=1] GhostVoteUnusedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/unused_unhide_stack
execute as @e[tag=votelight7] if score @a[scores={Player=-7},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-7},limit=1] GhostVoteUnusedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/unused_unhide_stack
execute as @e[tag=votelight8] if score @a[scores={Player=-8},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-8},limit=1] GhostVoteUnusedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/unused_unhide_stack
execute as @e[tag=votelight9] if score @a[scores={Player=-9},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-9},limit=1] GhostVoteUnusedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/unused_unhide_stack
execute as @e[tag=votelight10] if score @a[scores={Player=-10},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-10},limit=1] GhostVoteUnusedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/unused_unhide_stack
execute as @e[tag=votelight11] if score @a[scores={Player=-11},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-11},limit=1] GhostVoteUnusedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/unused_unhide_stack
execute as @e[tag=votelight12] if score @a[scores={Player=-12},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-12},limit=1] GhostVoteUnusedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/unused_unhide_stack
execute as @e[tag=votelight13] if score @a[scores={Player=-13},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-13},limit=1] GhostVoteUnusedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/unused_unhide_stack
execute as @e[tag=votelight14] if score @a[scores={Player=-14},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-14},limit=1] GhostVoteUnusedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/unused_unhide_stack
execute as @e[tag=votelight15] if score @a[scores={Player=-15},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-15},limit=1] GhostVoteUnusedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/unused_unhide_stack
execute as @e[tag=votelight16] if score @a[scores={Player=-16},limit=1] GhostVoteUsedMaster matches 0 run execute if score @a[scores={Player=-16},limit=1] GhostVoteUnusedToday matches 1 run function extras:organ_grinder/hide_ghost_votes/unused_unhide_stack

# Remove reinforced deepslate if it's in the votelight position

execute as @e[tag=votelight1] at @s if block ~ ~ ~ reinforced_deepslate run setblock ~ ~ ~ air
execute as @e[tag=votelight2] at @s if block ~ ~ ~ reinforced_deepslate run setblock ~ ~ ~ air
execute as @e[tag=votelight3] at @s if block ~ ~ ~ reinforced_deepslate run setblock ~ ~ ~ air
execute as @e[tag=votelight4] at @s if block ~ ~ ~ reinforced_deepslate run setblock ~ ~ ~ air
execute as @e[tag=votelight5] at @s if block ~ ~ ~ reinforced_deepslate run setblock ~ ~ ~ air
execute as @e[tag=votelight6] at @s if block ~ ~ ~ reinforced_deepslate run setblock ~ ~ ~ air
execute as @e[tag=votelight7] at @s if block ~ ~ ~ reinforced_deepslate run setblock ~ ~ ~ air
execute as @e[tag=votelight8] at @s if block ~ ~ ~ reinforced_deepslate run setblock ~ ~ ~ air
execute as @e[tag=votelight9] at @s if block ~ ~ ~ reinforced_deepslate run setblock ~ ~ ~ air
execute as @e[tag=votelight10] at @s if block ~ ~ ~ reinforced_deepslate run setblock ~ ~ ~ air
execute as @e[tag=votelight11] at @s if block ~ ~ ~ reinforced_deepslate run setblock ~ ~ ~ air
execute as @e[tag=votelight12] at @s if block ~ ~ ~ reinforced_deepslate run setblock ~ ~ ~ air
execute as @e[tag=votelight13] at @s if block ~ ~ ~ reinforced_deepslate run setblock ~ ~ ~ air
execute as @e[tag=votelight14] at @s if block ~ ~ ~ reinforced_deepslate run setblock ~ ~ ~ air
execute as @e[tag=votelight15] at @s if block ~ ~ ~ reinforced_deepslate run setblock ~ ~ ~ air
execute as @e[tag=votelight16] at @s if block ~ ~ ~ reinforced_deepslate run setblock ~ ~ ~ air