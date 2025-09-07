execute if entity @a[scores={Player=-11,IsBanshee=1,Alive=0}] run execute as @e[tag=votelight11,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run setblock ~ ~ ~ pearlescent_froglight
execute as @e[tag=votelight11,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_copper_bulb[lit=true]
execute as @e[tag=votelight11,limit=1,sort=nearest] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=true]
execute at @e[tag=votelight11,limit=1,sort=nearest] run playsound minecraft:block.lever.click block @a ~ ~ ~ 1.0 1.0

advancement revoke @s only voting:votelight11_on
