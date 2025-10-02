teleport @a[scores={Storyteller=1}] @e[limit=1,tag=townsquare,type=marker]

# teleport players home if its the end of the day

execute as @a[scores={Player=-1,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house1,type=marker]
execute as @a[scores={Player=-2,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house2,type=marker]
execute as @a[scores={Player=-3,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house3,type=marker]
execute as @a[scores={Player=-4,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house4,type=marker]
execute as @a[scores={Player=-5,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house5,type=marker]
execute as @a[scores={Player=-6,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house6,type=marker]
execute as @a[scores={Player=-7,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house7,type=marker]
execute as @a[scores={Player=-8,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house8,type=marker]
execute as @a[scores={Player=-9,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house9,type=marker]
execute as @a[scores={Player=-10,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house10,type=marker]
execute as @a[scores={Player=-11,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house11,type=marker]
execute as @a[scores={Player=-12,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house12,type=marker]
execute as @a[scores={Player=-13,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house13,type=marker]
execute as @a[scores={Player=-14,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house14,type=marker]
execute as @a[scores={Player=-15,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house15,type=marker]
execute as @a[scores={Player=-16,Booth=1}] if score #tp_disabled temp matches 0 run teleport @s @e[limit=1,tag=house16,type=marker]

# teleport players to seat if not

execute as @a[scores={Player=-1,Booth=1}] if score #tp_disabled temp matches 1 run execute as @e[limit=1,tag=seat1,type=minecraft:marker] at @s run teleport @a[scores={Player=-1}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight1,type=marker]
execute as @a[scores={Player=-2,Booth=1}] if score #tp_disabled temp matches 1 run execute as @e[limit=1,tag=seat2,type=minecraft:marker] at @s run teleport @a[scores={Player=-2}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight2,type=marker]
execute as @a[scores={Player=-3,Booth=1}] if score #tp_disabled temp matches 1 run execute as @e[limit=1,tag=seat3,type=minecraft:marker] at @s run teleport @a[scores={Player=-3}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight3,type=marker]
execute as @a[scores={Player=-4,Booth=1}] if score #tp_disabled temp matches 1 run execute as @e[limit=1,tag=seat4,type=minecraft:marker] at @s run teleport @a[scores={Player=-4}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight4,type=marker]
execute as @a[scores={Player=-5,Booth=1}] if score #tp_disabled temp matches 1 run execute as @e[limit=1,tag=seat5,type=minecraft:marker] at @s run teleport @a[scores={Player=-5}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight5,type=marker]
execute as @a[scores={Player=-6,Booth=1}] if score #tp_disabled temp matches 1 run execute as @e[limit=1,tag=seat6,type=minecraft:marker] at @s run teleport @a[scores={Player=-6}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight6,type=marker]
execute as @a[scores={Player=-7,Booth=1}] if score #tp_disabled temp matches 1 run execute as @e[limit=1,tag=seat7,type=minecraft:marker] at @s run teleport @a[scores={Player=-7}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight7,type=marker]
execute as @a[scores={Player=-8,Booth=1}] if score #tp_disabled temp matches 1 run execute as @e[limit=1,tag=seat8,type=minecraft:marker] at @s run teleport @a[scores={Player=-8}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight8,type=marker]
execute as @a[scores={Player=-9,Booth=1}] if score #tp_disabled temp matches 1 run execute as @e[limit=1,tag=seat9,type=minecraft:marker] at @s run teleport @a[scores={Player=-9}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight9,type=marker]
execute as @a[scores={Player=-10,Booth=1}] if score #tp_disabled temp matches 1 run execute as @e[limit=1,tag=seat10,type=minecraft:marker] at @s run teleport @a[scores={Player=-10}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight10,type=marker]
execute as @a[scores={Player=-11,Booth=1}] if score #tp_disabled temp matches 1 run execute as @e[limit=1,tag=seat11,type=minecraft:marker] at @s run teleport @a[scores={Player=-11}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight11,type=marker]
execute as @a[scores={Player=-12,Booth=1}] if score #tp_disabled temp matches 1 run execute as @e[limit=1,tag=seat12,type=minecraft:marker] at @s run teleport @a[scores={Player=-12}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight12,type=marker]
execute as @a[scores={Player=-13,Booth=1}] if score #tp_disabled temp matches 1 run execute as @e[limit=1,tag=seat13,type=minecraft:marker] at @s run teleport @a[scores={Player=-13}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight13,type=marker]
execute as @a[scores={Player=-14,Booth=1}] if score #tp_disabled temp matches 1 run execute as @e[limit=1,tag=seat14,type=minecraft:marker] at @s run teleport @a[scores={Player=-14}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight14,type=marker]
execute as @a[scores={Player=-15,Booth=1}] if score #tp_disabled temp matches 1 run execute as @e[limit=1,tag=seat15,type=minecraft:marker] at @s run teleport @a[scores={Player=-15}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight15,type=marker]
execute as @a[scores={Player=-16,Booth=1}] if score #tp_disabled temp matches 1 run execute as @e[limit=1,tag=seat16,type=minecraft:marker] at @s run teleport @a[scores={Player=-16}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight16,type=marker]

# reset storyteller booth

scoreboard players set @a Booth 0