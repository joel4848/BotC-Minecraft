# Check current state and store it

execute as @e[tag=votelight3,limit=1,sort=nearest] at @s store success score #votelight_banshee_state_3 temp if block ~ ~ ~ pearlescent_froglight
execute unless score #voudon temp matches 1 run execute as @e[tag=votelight3,limit=1,sort=nearest] at @s unless block ~ ~ ~ pearlescent_froglight store success score #votelight_state_3 temp if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true]
execute if score #voudon temp matches 1 run execute as @e[tag=votelight3,limit=1,sort=nearest] at @s unless block ~ ~ ~ pearlescent_froglight store success score #votelight_state_3 temp if block ~ ~ ~ waxed_weathered_copper_bulb[lit=true]

# Toggle based on stored state

execute unless score #voudon temp matches 1 run execute as @e[tag=votelight3,limit=1,sort=nearest] at @s unless block ~ ~ ~ waxed_copper_bulb if score #votelight_banshee_state_3 temp matches 1 if score #votelight_state_3 temp matches 1 run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=true]
execute unless score #voudon temp matches 1 run execute as @e[tag=votelight3,limit=1,sort=nearest] at @s unless block ~ ~ ~ waxed_copper_bulb if score #votelight_banshee_state_3 temp matches 1 if score #votelight_state_3 temp matches 0 run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]

execute if score #voudon temp matches 1 run execute as @e[tag=votelight3,limit=1,sort=nearest] at @s unless block ~ ~ ~ waxed_copper_bulb if score #votelight_banshee_state_3 temp matches 1 if score #votelight_state_3 temp matches 1 run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=true]
execute if score #voudon temp matches 1 run execute as @e[tag=votelight3,limit=1,sort=nearest] at @s unless block ~ ~ ~ waxed_copper_bulb if score #votelight_banshee_state_3 temp matches 1 if score #votelight_state_3 temp matches 0 run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]

execute as @e[tag=votelight3,limit=1,sort=nearest] at @s if score @a[scores={Player=-3},limit=1] IsBanshee matches 1 unless block ~ ~ ~ waxed_copper_bulb if score #votelight_banshee_state_3 temp matches 0 run setblock ~ ~ ~ pearlescent_froglight

execute at @e[tag=votelight3,limit=1,sort=nearest] if score @a[scores={Player=-3},limit=1] Alive matches 0 if score @a[scores={Player=-3},limit=1] IsBanshee matches 1 run playsound minecraft:block.lever.click block @a ~ ~ ~ 1.0 1.0