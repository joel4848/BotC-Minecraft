execute as @e[tag=votelight13,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run setblock ~ ~ ~ waxed_copper_bulb[lit=false]
execute as @e[tag=votelight13,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute as @e[tag=votelight13,limit=1,sort=nearest] at @s if block ~ ~ ~ pearlescent_froglight run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=true]
execute at @e[tag=votelight13,limit=1,sort=nearest] run playsound minecraft:block.lever.click block @a ~ ~ ~ 1.0 1.0

advancement revoke @s only voting:votelight13_off
