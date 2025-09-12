# Check current state and store it

execute as @e[type=marker,tag=votelight4,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_copper_bulb store success score #votelight_state_4 temp if block ~ ~ ~ waxed_copper_bulb[lit=true]
execute as @e[type=marker,tag=votelight4,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb store success score #votelight_state_4 temp if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true]
execute as @e[type=marker,tag=votelight4,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_weathered_copper_bulb store success score #votelight_state_4 temp if block ~ ~ ~ waxed_weathered_copper_bulb[lit=true]

# Toggle based on stored state

execute unless score #voudon temp matches 1 run execute as @e[type=marker,tag=votelight4,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_copper_bulb if score #votelight_state_4 temp matches 1 run setblock ~ ~ ~ waxed_copper_bulb[lit=false]
execute unless score #voudon temp matches 1 run execute as @e[type=marker,tag=votelight4,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_copper_bulb if score #votelight_state_4 temp matches 0 run setblock ~ ~ ~ waxed_copper_bulb[lit=true]

execute as @e[type=marker,tag=votelight4,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb if score #votelight_state_4 temp matches 1 run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute as @e[type=marker,tag=votelight4,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb if score #votelight_state_4 temp matches 0 run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=true]

execute as @e[type=marker,tag=votelight4,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_weathered_copper_bulb if score #votelight_state_4 temp matches 1 run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute as @e[type=marker,tag=votelight4,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_weathered_copper_bulb if score #votelight_state_4 temp matches 0 run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=true]

execute unless score #voudon temp matches 1 run execute at @e[type=marker,tag=votelight4,limit=1,sort=nearest] run playsound minecraft:block.lever.click block @a ~ ~ ~ 1.0 1.0
execute as @e[type=marker,tag=votelight4,limit=1,sort=nearest] at @s if score #voudon temp matches 1 run execute if block ~ ~ ~ waxed_weathered_copper_bulb run playsound minecraft:block.lever.click block @a ~ ~ ~ 1.0 1.0

advancement revoke @s only voting:votelight_4_interact


