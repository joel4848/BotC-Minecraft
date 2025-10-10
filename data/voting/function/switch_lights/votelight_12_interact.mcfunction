# Check current state and store it

execute as @e[type=marker,tag=votelight12,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_copper_bulb store success score #votelight_state_12 temp if block ~ ~ ~ waxed_copper_bulb[lit=true]
execute as @e[type=marker,tag=votelight12,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb store success score #votelight_state_12 temp if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true]
execute as @e[type=marker,tag=votelight12,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_weathered_copper_bulb store success score #votelight_state_12 temp if block ~ ~ ~ waxed_weathered_copper_bulb[lit=true]

# Toggle based on stored state

execute unless score #voudon temp matches 1 run execute as @e[type=marker,tag=votelight12,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_copper_bulb if score #votelight_state_12 temp matches 1 run setblock ~ ~ ~ waxed_copper_bulb[lit=false]
execute unless score #voudon temp matches 1 run execute as @e[type=marker,tag=votelight12,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_copper_bulb if score #votelight_state_12 temp matches 0 run setblock ~ ~ ~ waxed_copper_bulb[lit=true]

execute as @e[type=marker,tag=votelight12,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb if score #votelight_state_12 temp matches 1 run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute as @e[type=marker,tag=votelight12,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb if score #votelight_state_12 temp matches 0 run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=true]

execute as @e[type=marker,tag=votelight12,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_weathered_copper_bulb if score #votelight_state_12 temp matches 1 run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute as @e[type=marker,tag=votelight12,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_weathered_copper_bulb if score #votelight_state_12 temp matches 0 run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=true]

execute unless score #voudon temp matches 1 run execute at @e[type=marker,tag=votelight12,limit=1,sort=nearest] run execute unless score #og_silence_votelights temp matches 1 run playsound minecraft:block.lever.click block @a ~ ~ ~ 1.0 1.0
execute as @e[type=marker,tag=votelight12,limit=1,sort=nearest] at @s if score #voudon temp matches 1 run execute if block ~ ~ ~ waxed_weathered_copper_bulb run execute unless score #og_silence_votelights temp matches 1 run playsound minecraft:block.lever.click block @a ~ ~ ~ 1.0 1.0