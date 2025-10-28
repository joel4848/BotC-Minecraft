
execute as @e[tag=mapcentre] at @s run place template nomination:nomination_podiums_place ~-7 ~1 ~-7

execute if score #use_nomination_podiums temp matches 1 run execute as @e[limit=1,tag=prosecution_podium,type=minecraft:marker] at @s run tp @a[scores={Nominator=1}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=defence_podium,type=marker]
execute if score #use_nomination_podiums temp matches 1 run execute as @e[limit=1,tag=defence_podium,type=minecraft:marker] at @s run tp @a[scores={Nominated=1}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=prosecution_podium,type=marker]
