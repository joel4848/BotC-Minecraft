
$execute as @e[type=minecraft:marker,tag=lair_player,limit=1] at @s run tp @a[scores={Player=-$(player)}] ~ ~ ~ facing entity @e[type=minecraft:marker,tag=lair_st,limit=1]
