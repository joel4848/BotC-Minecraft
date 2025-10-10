# Put this in here rather than having another tick function

execute if score #is_nighttime temp matches 1 run title @a actionbar "It is nighttime"

# Don't have spectators count towards alive player count

scoreboard players set @a[gamemode=spectator] Alive 0
scoreboard players set @a[scores={Storyteller=1}] Alive 0

# Give everyone fire resistance because they can't be trusted

effect give @a minecraft:fire_resistance infinite 99 true

# Give alive players visibility, no helmet and no chestplate

effect clear @a[scores={Alive=1}] invisibility
# execute as @a[scores={Alive=1,Player=..0}] run execute if items entity @s armor.head player_head run item replace entity @s armor.head with minecraft:air
execute as @a[scores={Alive=1,Player=..0}] run item replace entity @s armor.head with minecraft:air
execute as @a[scores={Alive=1,Player=..0}] run execute if items entity @s armor.feet golden_boots run item replace entity @s armor.feet with minecraft:air

# Give dead players invisibility

effect give @a[scores={Alive=0,Storyteller=0}] invisibility infinite 99 true

# Un-set master ghost vote used for alive players

execute as @a[scores={Alive=1}] run scoreboard players set @s GhostVoteUsedMaster 0

# Set alive players' scores to green

scoreboard players display numberformat @a[scores={Player=-1,Alive=1}] Player fixed {"text":"1","color":"green"}
scoreboard players display numberformat @a[scores={Player=-2,Alive=1}] Player fixed {"text":"2","color":"green"}
scoreboard players display numberformat @a[scores={Player=-3,Alive=1}] Player fixed {"text":"3","color":"green"}
scoreboard players display numberformat @a[scores={Player=-4,Alive=1}] Player fixed {"text":"4","color":"green"}
scoreboard players display numberformat @a[scores={Player=-5,Alive=1}] Player fixed {"text":"5","color":"green"}
scoreboard players display numberformat @a[scores={Player=-6,Alive=1}] Player fixed {"text":"6","color":"green"}
scoreboard players display numberformat @a[scores={Player=-7,Alive=1}] Player fixed {"text":"7","color":"green"}
scoreboard players display numberformat @a[scores={Player=-8,Alive=1}] Player fixed {"text":"8","color":"green"}
scoreboard players display numberformat @a[scores={Player=-9,Alive=1}] Player fixed {"text":"9","color":"green"}
scoreboard players display numberformat @a[scores={Player=-10,Alive=1}] Player fixed {"text":"10","color":"green"}
scoreboard players display numberformat @a[scores={Player=-11,Alive=1}] Player fixed {"text":"11","color":"green"}
scoreboard players display numberformat @a[scores={Player=-12,Alive=1}] Player fixed {"text":"12","color":"green"}
scoreboard players display numberformat @a[scores={Player=-13,Alive=1}] Player fixed {"text":"13","color":"green"}
scoreboard players display numberformat @a[scores={Player=-14,Alive=1}] Player fixed {"text":"14","color":"green"}
scoreboard players display numberformat @a[scores={Player=-15,Alive=1}] Player fixed {"text":"15","color":"green"}
scoreboard players display numberformat @a[scores={Player=-16,Alive=1}] Player fixed {"text":"16","color":"green"}

# Set dead players' scores to dark green

scoreboard players display numberformat @a[scores={Player=-1,Alive=0}] Player fixed {"text":"1","color":"dark_green"}
scoreboard players display numberformat @a[scores={Player=-2,Alive=0}] Player fixed {"text":"2","color":"dark_green"}
scoreboard players display numberformat @a[scores={Player=-3,Alive=0}] Player fixed {"text":"3","color":"dark_green"}
scoreboard players display numberformat @a[scores={Player=-4,Alive=0}] Player fixed {"text":"4","color":"dark_green"}
scoreboard players display numberformat @a[scores={Player=-5,Alive=0}] Player fixed {"text":"5","color":"dark_green"}
scoreboard players display numberformat @a[scores={Player=-6,Alive=0}] Player fixed {"text":"6","color":"dark_green"}
scoreboard players display numberformat @a[scores={Player=-7,Alive=0}] Player fixed {"text":"7","color":"dark_green"}
scoreboard players display numberformat @a[scores={Player=-8,Alive=0}] Player fixed {"text":"8","color":"dark_green"}
scoreboard players display numberformat @a[scores={Player=-9,Alive=0}] Player fixed {"text":"9","color":"dark_green"}
scoreboard players display numberformat @a[scores={Player=-10,Alive=0}] Player fixed {"text":"10","color":"dark_green"}
scoreboard players display numberformat @a[scores={Player=-11,Alive=0}] Player fixed {"text":"11","color":"dark_green"}
scoreboard players display numberformat @a[scores={Player=-12,Alive=0}] Player fixed {"text":"12","color":"dark_green"}
scoreboard players display numberformat @a[scores={Player=-13,Alive=0}] Player fixed {"text":"13","color":"dark_green"}
scoreboard players display numberformat @a[scores={Player=-14,Alive=0}] Player fixed {"text":"14","color":"dark_green"}
scoreboard players display numberformat @a[scores={Player=-15,Alive=0}] Player fixed {"text":"15","color":"dark_green"}
scoreboard players display numberformat @a[scores={Player=-16,Alive=0}] Player fixed {"text":"16","color":"dark_green"}

# Turn dead players' vote blocks to ghost votes

execute unless score #voudon temp matches 1 run execute if entity @a[scores={Player=-1,Alive=0}] run execute as @e[tag=votelight1] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute unless score #voudon temp matches 1 run execute if entity @a[scores={Player=-2,Alive=0}] run execute as @e[tag=votelight2] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute unless score #voudon temp matches 1 run execute if entity @a[scores={Player=-3,Alive=0}] run execute as @e[tag=votelight3] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute unless score #voudon temp matches 1 run execute if entity @a[scores={Player=-4,Alive=0}] run execute as @e[tag=votelight4] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute unless score #voudon temp matches 1 run execute if entity @a[scores={Player=-5,Alive=0}] run execute as @e[tag=votelight5] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute unless score #voudon temp matches 1 run execute if entity @a[scores={Player=-6,Alive=0}] run execute as @e[tag=votelight6] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute unless score #voudon temp matches 1 run execute if entity @a[scores={Player=-7,Alive=0}] run execute as @e[tag=votelight7] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute unless score #voudon temp matches 1 run execute if entity @a[scores={Player=-8,Alive=0}] run execute as @e[tag=votelight8] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute unless score #voudon temp matches 1 run execute if entity @a[scores={Player=-9,Alive=0}] run execute as @e[tag=votelight9] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute unless score #voudon temp matches 1 run execute if entity @a[scores={Player=-10,Alive=0}] run execute as @e[tag=votelight10] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute unless score #voudon temp matches 1 run execute if entity @a[scores={Player=-11,Alive=0}] run execute as @e[tag=votelight11] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute unless score #voudon temp matches 1 run execute if entity @a[scores={Player=-12,Alive=0}] run execute as @e[tag=votelight12] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute unless score #voudon temp matches 1 run execute if entity @a[scores={Player=-13,Alive=0}] run execute as @e[tag=votelight13] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute unless score #voudon temp matches 1 run execute if entity @a[scores={Player=-14,Alive=0}] run execute as @e[tag=votelight14] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute unless score #voudon temp matches 1 run execute if entity @a[scores={Player=-15,Alive=0}] run execute as @e[tag=votelight15] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute unless score #voudon temp matches 1 run execute if entity @a[scores={Player=-16,Alive=0}] run execute as @e[tag=votelight16] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]

# Turn newly-dead players' vote blocks to voudon ghost votes

execute if score #voudon temp matches 1 run execute if entity @a[scores={Player=-1,Alive=0}] run execute as @e[tag=votelight1] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if score #voudon temp matches 1 run execute if entity @a[scores={Player=-2,Alive=0}] run execute as @e[tag=votelight2] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if score #voudon temp matches 1 run execute if entity @a[scores={Player=-3,Alive=0}] run execute as @e[tag=votelight3] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if score #voudon temp matches 1 run execute if entity @a[scores={Player=-4,Alive=0}] run execute as @e[tag=votelight4] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if score #voudon temp matches 1 run execute if entity @a[scores={Player=-5,Alive=0}] run execute as @e[tag=votelight5] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if score #voudon temp matches 1 run execute if entity @a[scores={Player=-6,Alive=0}] run execute as @e[tag=votelight6] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if score #voudon temp matches 1 run execute if entity @a[scores={Player=-7,Alive=0}] run execute as @e[tag=votelight7] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if score #voudon temp matches 1 run execute if entity @a[scores={Player=-8,Alive=0}] run execute as @e[tag=votelight8] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if score #voudon temp matches 1 run execute if entity @a[scores={Player=-9,Alive=0}] run execute as @e[tag=votelight9] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if score #voudon temp matches 1 run execute if entity @a[scores={Player=-10,Alive=0}] run execute as @e[tag=votelight10] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if score #voudon temp matches 1 run execute if entity @a[scores={Player=-11,Alive=0}] run execute as @e[tag=votelight11] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if score #voudon temp matches 1 run execute if entity @a[scores={Player=-12,Alive=0}] run execute as @e[tag=votelight12] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if score #voudon temp matches 1 run execute if entity @a[scores={Player=-13,Alive=0}] run execute as @e[tag=votelight13] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if score #voudon temp matches 1 run execute if entity @a[scores={Player=-14,Alive=0}] run execute as @e[tag=votelight14] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if score #voudon temp matches 1 run execute if entity @a[scores={Player=-15,Alive=0}] run execute as @e[tag=votelight15] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if score #voudon temp matches 1 run execute if entity @a[scores={Player=-16,Alive=0}] run execute as @e[tag=votelight16] run execute at @s if block ~ ~ ~ waxed_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]

# Revert revived players' unused ghost votes

execute if entity @a[scores={Player=-1,Alive=1}] run execute as @e[tag=votelight1] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_copper_bulb[lit=false]
execute if entity @a[scores={Player=-2,Alive=1}] run execute as @e[tag=votelight2] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_copper_bulb[lit=false]
execute if entity @a[scores={Player=-3,Alive=1}] run execute as @e[tag=votelight3] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_copper_bulb[lit=false]
execute if entity @a[scores={Player=-4,Alive=1}] run execute as @e[tag=votelight4] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_copper_bulb[lit=false]
execute if entity @a[scores={Player=-5,Alive=1}] run execute as @e[tag=votelight5] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_copper_bulb[lit=false]
execute if entity @a[scores={Player=-6,Alive=1}] run execute as @e[tag=votelight6] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_copper_bulb[lit=false]
execute if entity @a[scores={Player=-7,Alive=1}] run execute as @e[tag=votelight7] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_copper_bulb[lit=false]
execute if entity @a[scores={Player=-8,Alive=1}] run execute as @e[tag=votelight8] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_copper_bulb[lit=false]
execute if entity @a[scores={Player=-9,Alive=1}] run execute as @e[tag=votelight9] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_copper_bulb[lit=false]
execute if entity @a[scores={Player=-10,Alive=1}] run execute as @e[tag=votelight10] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_copper_bulb[lit=false]
execute if entity @a[scores={Player=-11,Alive=1}] run execute as @e[tag=votelight11] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_copper_bulb[lit=false]
execute if entity @a[scores={Player=-12,Alive=1}] run execute as @e[tag=votelight12] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_copper_bulb[lit=false]
execute if entity @a[scores={Player=-13,Alive=1}] run execute as @e[tag=votelight13] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_copper_bulb[lit=false]
execute if entity @a[scores={Player=-14,Alive=1}] run execute as @e[tag=votelight14] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_copper_bulb[lit=false]
execute if entity @a[scores={Player=-15,Alive=1}] run execute as @e[tag=votelight15] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_copper_bulb[lit=false]
execute if entity @a[scores={Player=-16,Alive=1}] run execute as @e[tag=votelight16] run execute at @s if block ~ ~ ~ waxed_oxidized_copper_bulb[lit=false] run setblock ~ ~ ~ waxed_copper_bulb[lit=false]

# Return revived players' used ghost votes

execute if score player_count PlayerCount matches 5.. run execute if entity @a[scores={Player=-1,Alive=1}] run execute as @e[tag=votelight1] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false]
execute if score player_count PlayerCount matches 5.. run execute if entity @a[scores={Player=-2,Alive=1}] run execute as @e[tag=votelight2] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false]
execute if score player_count PlayerCount matches 5.. run execute if entity @a[scores={Player=-3,Alive=1}] run execute as @e[tag=votelight3] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false]
execute if score player_count PlayerCount matches 5.. run execute if entity @a[scores={Player=-4,Alive=1}] run execute as @e[tag=votelight4] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false]
execute if score player_count PlayerCount matches 5.. run execute if entity @a[scores={Player=-5,Alive=1}] run execute as @e[tag=votelight5] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false]
execute if score player_count PlayerCount matches 6.. run execute if entity @a[scores={Player=-6,Alive=1}] run execute as @e[tag=votelight6] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false]
execute if score player_count PlayerCount matches 7.. run execute if entity @a[scores={Player=-7,Alive=1}] run execute as @e[tag=votelight7] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false]
execute if score player_count PlayerCount matches 8.. run execute if entity @a[scores={Player=-8,Alive=1}] run execute as @e[tag=votelight8] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false]
execute if score player_count PlayerCount matches 9.. run execute if entity @a[scores={Player=-9,Alive=1}] run execute as @e[tag=votelight9] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false]
execute if score player_count PlayerCount matches 10.. run execute if entity @a[scores={Player=-10,Alive=1}] run execute as @e[tag=votelight10] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false]
execute if score player_count PlayerCount matches 11.. run execute if entity @a[scores={Player=-11,Alive=1}] run execute as @e[tag=votelight11] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false]
execute if score player_count PlayerCount matches 12.. run execute if entity @a[scores={Player=-12,Alive=1}] run execute as @e[tag=votelight12] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false]
execute if score player_count PlayerCount matches 13.. run execute if entity @a[scores={Player=-13,Alive=1}] run execute as @e[tag=votelight13] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false]
execute if score player_count PlayerCount matches 14.. run execute if entity @a[scores={Player=-14,Alive=1}] run execute as @e[tag=votelight14] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false]
execute if score player_count PlayerCount matches 15.. run execute if entity @a[scores={Player=-15,Alive=1}] run execute as @e[tag=votelight15] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false]
execute if score player_count PlayerCount matches 16.. run execute if entity @a[scores={Player=-16,Alive=1}] run execute as @e[tag=votelight16] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_oxidized_copper_bulb[lit=false]

# Reset revived Banshee's froglight

execute if entity @a[scores={Player=-1,Alive=1}] run execute as @e[tag=votelight1] run execute at @s if block ~ ~ ~ pearlescent_froglight run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute if entity @a[scores={Player=-2,Alive=1}] run execute as @e[tag=votelight2] run execute at @s if block ~ ~ ~ pearlescent_froglight run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute if entity @a[scores={Player=-3,Alive=1}] run execute as @e[tag=votelight3] run execute at @s if block ~ ~ ~ pearlescent_froglight run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute if entity @a[scores={Player=-4,Alive=1}] run execute as @e[tag=votelight4] run execute at @s if block ~ ~ ~ pearlescent_froglight run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute if entity @a[scores={Player=-5,Alive=1}] run execute as @e[tag=votelight5] run execute at @s if block ~ ~ ~ pearlescent_froglight run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute if entity @a[scores={Player=-6,Alive=1}] run execute as @e[tag=votelight6] run execute at @s if block ~ ~ ~ pearlescent_froglight run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute if entity @a[scores={Player=-7,Alive=1}] run execute as @e[tag=votelight7] run execute at @s if block ~ ~ ~ pearlescent_froglight run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute if entity @a[scores={Player=-8,Alive=1}] run execute as @e[tag=votelight8] run execute at @s if block ~ ~ ~ pearlescent_froglight run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute if entity @a[scores={Player=-9,Alive=1}] run execute as @e[tag=votelight9] run execute at @s if block ~ ~ ~ pearlescent_froglight run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute if entity @a[scores={Player=-10,Alive=1}] run execute as @e[tag=votelight10] run execute at @s if block ~ ~ ~ pearlescent_froglight run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute if entity @a[scores={Player=-11,Alive=1}] run execute as @e[tag=votelight11] run execute at @s if block ~ ~ ~ pearlescent_froglight run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute if entity @a[scores={Player=-12,Alive=1}] run execute as @e[tag=votelight12] run execute at @s if block ~ ~ ~ pearlescent_froglight run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute if entity @a[scores={Player=-13,Alive=1}] run execute as @e[tag=votelight13] run execute at @s if block ~ ~ ~ pearlescent_froglight run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute if entity @a[scores={Player=-14,Alive=1}] run execute as @e[tag=votelight14] run execute at @s if block ~ ~ ~ pearlescent_froglight run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute if entity @a[scores={Player=-15,Alive=1}] run execute as @e[tag=votelight15] run execute at @s if block ~ ~ ~ pearlescent_froglight run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
execute if entity @a[scores={Player=-16,Alive=1}] run execute as @e[tag=votelight16] run execute at @s if block ~ ~ ~ pearlescent_froglight run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]

# Test auto remove/replace interaction entities

# execute as @e[type=marker,tag=votelight] at @s if block ~ ~-1 ~ reinforced_deepslate run kill @e[type=interaction,distance=..1,limit=1]

# execute as @e[scores={lightID=1}] at @s if score #testtest_0 temp matches 1 if block ~ ~ ~ air run function players:test_0
# execute as @e[scores={lightID=1}] at @s if score #testtest_0 temp matches 0 if block ~ ~ ~ waxed_copper_bulb run function players:test_1
# execute as @e[scores={lightID=1}] at @s if score #testtest_0 temp matches 0 if block ~ ~ ~ waxed_oxidized_copper_bulb run function players:test_1
# execute as @e[scores={lightID=1}] at @s if score #testtest_0 temp matches 0 if block ~ ~ ~ pearlescent_froglight run function players:test_1