execute as @e[limit=1,tag=seat1,type=minecraft:marker] at @s run execute if entity @a[scores={Player=-1,Wheee=1}] run tp @a[scores={Player=-1}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight1,type=marker]
execute as @e[limit=1,tag=seat2,type=minecraft:marker] at @s run execute if entity @a[scores={Player=-2,Wheee=1}] run tp @a[scores={Player=-2}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight2,type=marker]
execute as @e[limit=1,tag=seat3,type=minecraft:marker] at @s run execute if entity @a[scores={Player=-3,Wheee=1}] run tp @a[scores={Player=-3}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight3,type=marker]
execute as @e[limit=1,tag=seat4,type=minecraft:marker] at @s run execute if entity @a[scores={Player=-4,Wheee=1}] run tp @a[scores={Player=-4}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight4,type=marker]
execute as @e[limit=1,tag=seat5,type=minecraft:marker] at @s run execute if entity @a[scores={Player=-5,Wheee=1}] run tp @a[scores={Player=-5}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight5,type=marker]
execute as @e[limit=1,tag=seat6,type=minecraft:marker] at @s run execute if entity @a[scores={Player=-6,Wheee=1}] run tp @a[scores={Player=-6}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight6,type=marker]
execute as @e[limit=1,tag=seat7,type=minecraft:marker] at @s run execute if entity @a[scores={Player=-7,Wheee=1}] run tp @a[scores={Player=-7}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight7,type=marker]
execute as @e[limit=1,tag=seat8,type=minecraft:marker] at @s run execute if entity @a[scores={Player=-8,Wheee=1}] run tp @a[scores={Player=-8}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight8,type=marker]
execute as @e[limit=1,tag=seat9,type=minecraft:marker] at @s run execute if entity @a[scores={Player=-9,Wheee=1}] run tp @a[scores={Player=-9}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight9,type=marker]
execute as @e[limit=1,tag=seat10,type=minecraft:marker] at @s run execute if entity @a[scores={Player=-10,Wheee=1}] run tp @a[scores={Player=-10}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight10,type=marker]
execute as @e[limit=1,tag=seat11,type=minecraft:marker] at @s run execute if entity @a[scores={Player=-11,Wheee=1}] run tp @a[scores={Player=-11}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight11,type=marker]
execute as @e[limit=1,tag=seat12,type=minecraft:marker] at @s run execute if entity @a[scores={Player=-12,Wheee=1}] run tp @a[scores={Player=-12}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight12,type=marker]
execute as @e[limit=1,tag=seat13,type=minecraft:marker] at @s run execute if entity @a[scores={Player=-13,Wheee=1}] run tp @a[scores={Player=-13}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight13,type=marker]
execute as @e[limit=1,tag=seat14,type=minecraft:marker] at @s run execute if entity @a[scores={Player=-14,Wheee=1}] run tp @a[scores={Player=-14}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight14,type=marker]
execute as @e[limit=1,tag=seat15,type=minecraft:marker] at @s run execute if entity @a[scores={Player=-15,Wheee=1}] run tp @a[scores={Player=-15}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight15,type=marker]
execute as @e[limit=1,tag=seat16,type=minecraft:marker] at @s run execute if entity @a[scores={Player=-16,Wheee=1}] run tp @a[scores={Player=-16}] ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight16,type=marker]

execute as @a[scores={Wheee=1}] unless score @s Player matches ..-1 run tp @s 167 91 1

execute as @a run playsound entity.player.teleport master @a ~ ~ ~ 1 1 1

scoreboard players set @a[scores={Wheee=1}] Wheee 0

execute if score #was_lts_enabled temp matches 0 run scoreboard players set #lock_to_seats temp 0
execute if score #was_lts_enabled temp matches 1 run scoreboard players set #lock_to_seats temp 1
execute if score #lock_to_seats temp matches 1 run execute as @a run fmvariable set lock_to_seats true true
execute if score #lock_to_seats temp matches 1 run schedule function voting:lock_to_seats 1t replace

# tellraw @a [{"text":"TP 1","color":"gray"}]