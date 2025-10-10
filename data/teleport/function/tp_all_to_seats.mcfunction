execute as @e[limit=1,tag=seat1,type=minecraft:marker] at @s run tp @a[scores={Player=-1}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight1,type=marker]
execute as @e[limit=1,tag=seat2,type=minecraft:marker] at @s run tp @a[scores={Player=-2}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight2,type=marker]
execute as @e[limit=1,tag=seat3,type=minecraft:marker] at @s run tp @a[scores={Player=-3}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight3,type=marker]
execute as @e[limit=1,tag=seat4,type=minecraft:marker] at @s run tp @a[scores={Player=-4}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight4,type=marker]
execute as @e[limit=1,tag=seat5,type=minecraft:marker] at @s run tp @a[scores={Player=-5}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight5,type=marker]
execute as @e[limit=1,tag=seat6,type=minecraft:marker] at @s run tp @a[scores={Player=-6}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight6,type=marker]
execute as @e[limit=1,tag=seat7,type=minecraft:marker] at @s run tp @a[scores={Player=-7}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight7,type=marker]
execute as @e[limit=1,tag=seat8,type=minecraft:marker] at @s run tp @a[scores={Player=-8}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight8,type=marker]
execute as @e[limit=1,tag=seat9,type=minecraft:marker] at @s run tp @a[scores={Player=-9}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight9,type=marker]
execute as @e[limit=1,tag=seat10,type=minecraft:marker] at @s run tp @a[scores={Player=-10}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight10,type=marker]
execute as @e[limit=1,tag=seat11,type=minecraft:marker] at @s run tp @a[scores={Player=-11}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight11,type=marker]
execute as @e[limit=1,tag=seat12,type=minecraft:marker] at @s run tp @a[scores={Player=-12}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight12,type=marker]
execute as @e[limit=1,tag=seat13,type=minecraft:marker] at @s run tp @a[scores={Player=-13}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight13,type=marker]
execute as @e[limit=1,tag=seat14,type=minecraft:marker] at @s run tp @a[scores={Player=-14}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight14,type=marker]
execute as @e[limit=1,tag=seat15,type=minecraft:marker] at @s run tp @a[scores={Player=-15}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight15,type=marker]
execute as @e[limit=1,tag=seat16,type=minecraft:marker] at @s run tp @a[scores={Player=-16}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight16,type=marker]

# Open discussion room doors

execute if block 199 95 0 lever[powered=false] run setblock 199 95 0 lever[face=wall,facing=east,powered=true]
execute if block 168 94 28 lever[powered=false] run setblock 168 94 28 lever[face=wall,facing=south,powered=true]
execute if block 138 94 18 lever[powered=false] run setblock 138 94 18 lever[face=wall,facing=west,powered=true]
execute if block 135 94 -1 lever[powered=false] run setblock 135 94 -1 lever[face=wall,facing=west,powered=true]
execute if block 136 94 -15 lever[powered=false] run setblock 136 94 -15 lever[face=wall,facing=west,powered=true]
execute if block 170 94 -28 lever[powered=false] run setblock 170 94 -28 lever[face=wall,facing=north,powered=true]
execute if block 193 95 -32 lever[powered=false] run setblock 193 95 -32 lever[face=wall,facing=north,powered=true]

setblock 199 95 1 oak_wood
setblock 167 94 28 oak_wood
setblock 138 94 19 oak_wood
setblock 135 94 0 oak_wood
setblock 136 94 -14 oak_wood
setblock 171 94 -28 oak_wood
setblock 194 95 -32 oak_wood

setblock 199 95 1 air
setblock 167 94 28 air
setblock 138 94 19 air
setblock 135 94 0 air
setblock 136 94 -14 air
setblock 171 94 -28 air
setblock 194 95 -32 air

# Mark players as not in their houses

scoreboard players set @a[scores={Player=-1}] InHouse 0
scoreboard players set @a[scores={Player=-2}] InHouse 0
scoreboard players set @a[scores={Player=-3}] InHouse 0
scoreboard players set @a[scores={Player=-4}] InHouse 0
scoreboard players set @a[scores={Player=-5}] InHouse 0
scoreboard players set @a[scores={Player=-6}] InHouse 0
scoreboard players set @a[scores={Player=-7}] InHouse 0
scoreboard players set @a[scores={Player=-8}] InHouse 0
scoreboard players set @a[scores={Player=-9}] InHouse 0
scoreboard players set @a[scores={Player=-10}] InHouse 0
scoreboard players set @a[scores={Player=-11}] InHouse 0
scoreboard players set @a[scores={Player=-12}] InHouse 0
scoreboard players set @a[scores={Player=-13}] InHouse 0
scoreboard players set @a[scores={Player=-14}] InHouse 0
scoreboard players set @a[scores={Player=-15}] InHouse 0
scoreboard players set @a[scores={Player=-16}] InHouse 0