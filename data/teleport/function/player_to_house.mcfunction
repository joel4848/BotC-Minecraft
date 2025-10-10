
$execute as @e[limit=1,tag=house$(player),type=marker] at @s run teleport @a[scores={Player=-$(player)}] ~ ~ ~ $(yaw) 0.0
