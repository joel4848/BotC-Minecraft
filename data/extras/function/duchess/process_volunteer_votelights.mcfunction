
playsound minecraft:block.bell.use master @a ~ ~ ~ 5 0.6 1
title @a times 0t 15t 10t
title @a title {"text":""}
title @a subtitle {"italic":true,"text":"Now!","color":"blue"}


# Removes all votelight interactions

kill @e[type=interaction,tag=vote_interaction]


# Count how many players volunteered

scoreboard players set #duchess_volunteer_count temp 0

execute as @e[tag=votelight1] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1
execute as @e[tag=votelight1] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1

execute as @e[tag=votelight2] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1
execute as @e[tag=votelight2] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1

execute as @e[tag=votelight3] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1
execute as @e[tag=votelight3] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1

execute as @e[tag=votelight4] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1
execute as @e[tag=votelight4] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1

execute as @e[tag=votelight5] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1
execute as @e[tag=votelight5] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1

execute as @e[tag=votelight6] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1
execute as @e[tag=votelight6] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1

execute as @e[tag=votelight7] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1
execute as @e[tag=votelight7] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1

execute as @e[tag=votelight8] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1
execute as @e[tag=votelight8] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1

execute as @e[tag=votelight9] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1
execute as @e[tag=votelight9] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1

execute as @e[tag=votelight10] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1
execute as @e[tag=votelight10] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1

execute as @e[tag=votelight11] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1
execute as @e[tag=votelight11] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1

execute as @e[tag=votelight12] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1
execute as @e[tag=votelight12] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1

execute as @e[tag=votelight13] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1
execute as @e[tag=votelight13] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1

execute as @e[tag=votelight14] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1
execute as @e[tag=votelight14] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1

execute as @e[tag=votelight15] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1
execute as @e[tag=votelight15] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1

execute as @e[tag=votelight16] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1
execute as @e[tag=votelight16] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run scoreboard players add #duchess_volunteer_count temp 1


# Announce volunteers


execute if score #duchess_volunteer_count temp matches 0 run tellraw @a [{"color":"aqua","text":"The following players volunteered: ("},{"color":"red","text":"0"},{"color":"aqua","text":"/3)"}]
execute if score #duchess_volunteer_count temp matches 1..2 run tellraw @a [{"color":"aqua","text":"The following players volunteered: ("},{"color":"red","score":{"name":"#duchess_volunteer_count","objective":"temp"}},"/3)"]
execute if score #duchess_volunteer_count temp matches 3 run tellraw @a [{"color":"aqua","text":"The following players volunteered: (3/3)"}]
execute if score #duchess_volunteer_count temp matches 4.. run tellraw @a [{"color":"aqua","text":"The following players volunteered: ("},{"color":"red","score":{"name":"#duchess_volunteer_count","objective":"temp"}},"/3)"]


execute as @e[tag=votelight1] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-1}]"}]
execute as @e[tag=votelight1] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-1}]"}]

execute as @e[tag=votelight2] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-2}]"}]
execute as @e[tag=votelight2] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-2}]"}]

execute as @e[tag=votelight3] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-3}]"}]
execute as @e[tag=votelight3] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-3}]"}]

execute as @e[tag=votelight4] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-4}]"}]
execute as @e[tag=votelight4] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-4}]"}]

execute as @e[tag=votelight5] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-5}]"}]
execute as @e[tag=votelight5] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-5}]"}]

execute as @e[tag=votelight6] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-6}]"}]
execute as @e[tag=votelight6] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-6}]"}]

execute as @e[tag=votelight7] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-7}]"}]
execute as @e[tag=votelight7] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-7}]"}]

execute as @e[tag=votelight8] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-8}]"}]
execute as @e[tag=votelight8] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-8}]"}]

execute as @e[tag=votelight9] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-9}]"}]
execute as @e[tag=votelight9] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-9}]"}]

execute as @e[tag=votelight10] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-10}]"}]
execute as @e[tag=votelight10] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-10}]"}]

execute as @e[tag=votelight11] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-11}]"}]
execute as @e[tag=votelight11] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-11}]"}]

execute as @e[tag=votelight12] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-12}]"}]
execute as @e[tag=votelight12] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-12}]"}]

execute as @e[tag=votelight13] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-13}]"}]
execute as @e[tag=votelight13] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-13}]"}]

execute as @e[tag=votelight14] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-14}]"}]
execute as @e[tag=votelight14] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-14}]"}]

execute as @e[tag=votelight15] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-15}]"}]
execute as @e[tag=votelight15] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-15}]"}]

execute as @e[tag=votelight16] at @s if block ~ ~ ~ waxed_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-16}]"}]
execute as @e[tag=votelight16] at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=true] run tellraw @a [{"color":"aqua","text":"- "},{"color":"gold","selector":"@a[scores={Player=-16}]"}]


# Reset volunteer count score

scoreboard players set #duchess_volunteer_count temp 0


# Reset votelights & replace votelight interactions

schedule function extras:duchess/reset_votelights 3s


# Unlock from seats

scoreboard players set #vote_running temp 0
scoreboard players set #lock_to_seats temp 0
