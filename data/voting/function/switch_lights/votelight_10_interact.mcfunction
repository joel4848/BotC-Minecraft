# Check current state and store it

execute as @e[tag=votelight10,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_copper_bulb store success score #votelight_state_10 temp if block ~ ~ ~ waxed_copper_bulb[lit=true]
execute as @e[tag=votelight10,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb store success score #votelight_state_10 temp if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true]


# Toggle based on stored state
execute as @e[tag=votelight10,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_copper_bulb if score #votelight_state_10 temp matches 1 run setblock ~ ~ ~ waxed_copper_bulb[lit=false]
execute as @e[tag=votelight10,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_copper_bulb if score #votelight_state_10 temp matches 0 run setblock ~ ~ ~ waxed_copper_bulb[lit=true]

execute as @e[tag=votelight10,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb if score #votelight_state_10 temp matches 1 run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute as @e[tag=votelight10,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb if score #votelight_state_10 temp matches 0 run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=true]

execute at @e[tag=votelight10,limit=1,sort=nearest] run playsound minecraft:block.lever.click block @a ~ ~ ~ 1.0 1.0

advancement revoke @s only voting:votelight_10_interact
