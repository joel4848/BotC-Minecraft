# Change Voudon's votelight

execute if entity @a[scores={Player=-1,IsVoudon=1}] run execute as @e[tag=votelight1] run execute at @s run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-2,IsVoudon=1}] run execute as @e[tag=votelight2] run execute at @s run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-3,IsVoudon=1}] run execute as @e[tag=votelight3] run execute at @s run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-4,IsVoudon=1}] run execute as @e[tag=votelight4] run execute at @s run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-5,IsVoudon=1}] run execute as @e[tag=votelight5] run execute at @s run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-6,IsVoudon=1}] run execute as @e[tag=votelight6] run execute at @s run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-7,IsVoudon=1}] run execute as @e[tag=votelight7] run execute at @s run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-8,IsVoudon=1}] run execute as @e[tag=votelight8] run execute at @s run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-9,IsVoudon=1}] run execute as @e[tag=votelight9] run execute at @s run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-10,IsVoudon=1}] run execute as @e[tag=votelight10] run execute at @s run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-11,IsVoudon=1}] run execute as @e[tag=votelight11] run execute at @s run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-12,IsVoudon=1}] run execute as @e[tag=votelight12] run execute at @s run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-13,IsVoudon=1}] run execute as @e[tag=votelight13] run execute at @s run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-14,IsVoudon=1}] run execute as @e[tag=votelight14] run execute at @s run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-15,IsVoudon=1}] run execute as @e[tag=votelight15] run execute at @s run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-16,IsVoudon=1}] run execute as @e[tag=votelight16] run execute at @s run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]

# Record & change unused ghost votes

execute if entity @a[scores={Player=-1,Alive=0}] run execute as @e[tag=votelight1] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run scoreboard players set @a[scores={Player=-1,Alive=0}] VoudonGhostVotePreviouslyUsed 0
execute if entity @a[scores={Player=-2,Alive=0}] run execute as @e[tag=votelight2] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run scoreboard players set @a[scores={Player=-2,Alive=0}] VoudonGhostVotePreviouslyUsed 0
execute if entity @a[scores={Player=-3,Alive=0}] run execute as @e[tag=votelight3] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run scoreboard players set @a[scores={Player=-3,Alive=0}] VoudonGhostVotePreviouslyUsed 0
execute if entity @a[scores={Player=-4,Alive=0}] run execute as @e[tag=votelight4] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run scoreboard players set @a[scores={Player=-4,Alive=0}] VoudonGhostVotePreviouslyUsed 0
execute if entity @a[scores={Player=-5,Alive=0}] run execute as @e[tag=votelight5] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run scoreboard players set @a[scores={Player=-5,Alive=0}] VoudonGhostVotePreviouslyUsed 0
execute if entity @a[scores={Player=-6,Alive=0}] run execute as @e[tag=votelight6] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run scoreboard players set @a[scores={Player=-6,Alive=0}] VoudonGhostVotePreviouslyUsed 0
execute if entity @a[scores={Player=-7,Alive=0}] run execute as @e[tag=votelight7] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run scoreboard players set @a[scores={Player=-7,Alive=0}] VoudonGhostVotePreviouslyUsed 0
execute if entity @a[scores={Player=-8,Alive=0}] run execute as @e[tag=votelight8] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run scoreboard players set @a[scores={Player=-8,Alive=0}] VoudonGhostVotePreviouslyUsed 0
execute if entity @a[scores={Player=-9,Alive=0}] run execute as @e[tag=votelight9] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run scoreboard players set @a[scores={Player=-9,Alive=0}] VoudonGhostVotePreviouslyUsed 0
execute if entity @a[scores={Player=-10,Alive=0}] run execute as @e[tag=votelight10] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run scoreboard players set @a[scores={Player=-10,Alive=0}] VoudonGhostVotePreviouslyUsed 0
execute if entity @a[scores={Player=-11,Alive=0}] run execute as @e[tag=votelight11] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run scoreboard players set @a[scores={Player=-11,Alive=0}] VoudonGhostVotePreviouslyUsed 0
execute if entity @a[scores={Player=-12,Alive=0}] run execute as @e[tag=votelight12] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run scoreboard players set @a[scores={Player=-12,Alive=0}] VoudonGhostVotePreviouslyUsed 0
execute if entity @a[scores={Player=-13,Alive=0}] run execute as @e[tag=votelight13] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run scoreboard players set @a[scores={Player=-13,Alive=0}] VoudonGhostVotePreviouslyUsed 0
execute if entity @a[scores={Player=-14,Alive=0}] run execute as @e[tag=votelight14] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run scoreboard players set @a[scores={Player=-14,Alive=0}] VoudonGhostVotePreviouslyUsed 0
execute if entity @a[scores={Player=-15,Alive=0}] run execute as @e[tag=votelight15] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run scoreboard players set @a[scores={Player=-15,Alive=0}] VoudonGhostVotePreviouslyUsed 0
execute if entity @a[scores={Player=-16,Alive=0}] run execute as @e[tag=votelight16] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run scoreboard players set @a[scores={Player=-16,Alive=0}] VoudonGhostVotePreviouslyUsed 0

execute if entity @a[scores={Player=-1,Alive=0}] run execute as @e[tag=votelight1] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-2,Alive=0}] run execute as @e[tag=votelight2] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-3,Alive=0}] run execute as @e[tag=votelight3] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-4,Alive=0}] run execute as @e[tag=votelight4] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-5,Alive=0}] run execute as @e[tag=votelight5] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-6,Alive=0}] run execute as @e[tag=votelight6] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-7,Alive=0}] run execute as @e[tag=votelight7] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-8,Alive=0}] run execute as @e[tag=votelight8] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-9,Alive=0}] run execute as @e[tag=votelight9] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-10,Alive=0}] run execute as @e[tag=votelight10] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-11,Alive=0}] run execute as @e[tag=votelight11] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-12,Alive=0}] run execute as @e[tag=votelight12] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-13,Alive=0}] run execute as @e[tag=votelight13] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-14,Alive=0}] run execute as @e[tag=votelight14] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-15,Alive=0}] run execute as @e[tag=votelight15] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-16,Alive=0}] run execute as @e[tag=votelight16] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]

# Record & change used ghost votes

execute if entity @a[scores={Player=-1,Alive=0}] run execute as @e[tag=votelight1] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run scoreboard players set @a[scores={Player=-1,Alive=0}] VoudonGhostVotePreviouslyUsed 1
execute if entity @a[scores={Player=-2,Alive=0}] run execute as @e[tag=votelight2] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run scoreboard players set @a[scores={Player=-2,Alive=0}] VoudonGhostVotePreviouslyUsed 1
execute if entity @a[scores={Player=-3,Alive=0}] run execute as @e[tag=votelight3] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run scoreboard players set @a[scores={Player=-3,Alive=0}] VoudonGhostVotePreviouslyUsed 1
execute if entity @a[scores={Player=-4,Alive=0}] run execute as @e[tag=votelight4] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run scoreboard players set @a[scores={Player=-4,Alive=0}] VoudonGhostVotePreviouslyUsed 1
execute if entity @a[scores={Player=-5,Alive=0}] run execute as @e[tag=votelight5] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run scoreboard players set @a[scores={Player=-5,Alive=0}] VoudonGhostVotePreviouslyUsed 1
execute if entity @a[scores={Player=-6,Alive=0}] run execute as @e[tag=votelight6] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run scoreboard players set @a[scores={Player=-6,Alive=0}] VoudonGhostVotePreviouslyUsed 1
execute if entity @a[scores={Player=-7,Alive=0}] run execute as @e[tag=votelight7] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run scoreboard players set @a[scores={Player=-7,Alive=0}] VoudonGhostVotePreviouslyUsed 1
execute if entity @a[scores={Player=-8,Alive=0}] run execute as @e[tag=votelight8] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run scoreboard players set @a[scores={Player=-8,Alive=0}] VoudonGhostVotePreviouslyUsed 1
execute if entity @a[scores={Player=-9,Alive=0}] run execute as @e[tag=votelight9] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run scoreboard players set @a[scores={Player=-9,Alive=0}] VoudonGhostVotePreviouslyUsed 1
execute if entity @a[scores={Player=-10,Alive=0}] run execute as @e[tag=votelight10] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run scoreboard players set @a[scores={Player=-10,Alive=0}] VoudonGhostVotePreviouslyUsed 1
execute if entity @a[scores={Player=-11,Alive=0}] run execute as @e[tag=votelight11] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run scoreboard players set @a[scores={Player=-11,Alive=0}] VoudonGhostVotePreviouslyUsed 1
execute if entity @a[scores={Player=-12,Alive=0}] run execute as @e[tag=votelight12] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run scoreboard players set @a[scores={Player=-12,Alive=0}] VoudonGhostVotePreviouslyUsed 1
execute if entity @a[scores={Player=-13,Alive=0}] run execute as @e[tag=votelight13] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run scoreboard players set @a[scores={Player=-13,Alive=0}] VoudonGhostVotePreviouslyUsed 1
execute if entity @a[scores={Player=-14,Alive=0}] run execute as @e[tag=votelight14] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run scoreboard players set @a[scores={Player=-14,Alive=0}] VoudonGhostVotePreviouslyUsed 1
execute if entity @a[scores={Player=-15,Alive=0}] run execute as @e[tag=votelight15] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run scoreboard players set @a[scores={Player=-15,Alive=0}] VoudonGhostVotePreviouslyUsed 1
execute if entity @a[scores={Player=-16,Alive=0}] run execute as @e[tag=votelight16] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run scoreboard players set @a[scores={Player=-16,Alive=0}] VoudonGhostVotePreviouslyUsed 1

execute if entity @a[scores={Player=-1,Alive=0}] run execute as @e[tag=votelight1] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-2,Alive=0}] run execute as @e[tag=votelight2] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-3,Alive=0}] run execute as @e[tag=votelight3] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-4,Alive=0}] run execute as @e[tag=votelight4] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-5,Alive=0}] run execute as @e[tag=votelight5] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-6,Alive=0}] run execute as @e[tag=votelight6] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-7,Alive=0}] run execute as @e[tag=votelight7] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-8,Alive=0}] run execute as @e[tag=votelight8] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-9,Alive=0}] run execute as @e[tag=votelight9] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-10,Alive=0}] run execute as @e[tag=votelight10] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-11,Alive=0}] run execute as @e[tag=votelight11] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-12,Alive=0}] run execute as @e[tag=votelight12] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-13,Alive=0}] run execute as @e[tag=votelight13] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-14,Alive=0}] run execute as @e[tag=votelight14] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-15,Alive=0}] run execute as @e[tag=votelight15] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @a[scores={Player=-16,Alive=0}] run execute as @e[tag=votelight16] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_weathered_copper_bulb[lit=false]