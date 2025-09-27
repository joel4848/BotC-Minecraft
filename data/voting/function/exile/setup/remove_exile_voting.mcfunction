
function voting:exile/setup/remove_lamps_and_levers


execute as @e[tag=votelight] at @s run execute if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false] replace
execute as @e[tag=votelight] at @s run execute if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false] replace
execute as @e[tag=votelight] at @s run execute if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false] replace
execute as @e[tag=votelight] at @s run execute if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false] replace
execute as @e[tag=votelight] at @s run execute if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false] replace
execute as @e[tag=votelight] at @s run execute if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false] replace
execute as @e[tag=votelight] at @s run execute if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false] replace
execute as @e[tag=votelight] at @s run execute if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false] replace
execute as @e[tag=votelight] at @s run execute if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false] replace
execute as @e[tag=votelight] at @s run execute if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false] replace
execute as @e[tag=votelight] at @s run execute if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false] replace
execute as @e[tag=votelight] at @s run execute if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false] replace
execute as @e[tag=votelight] at @s run execute if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false] replace
execute as @e[tag=votelight] at @s run execute if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false] replace
execute as @e[tag=votelight] at @s run execute if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false] replace
execute as @e[tag=votelight] at @s run execute if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false] replace
execute as @e[tag=votelight] at @s run execute if block ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=true] run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false] replace


schedule function voting:exile/setup/replace_pistons 2t

schedule function voting:reset_vote 5t

