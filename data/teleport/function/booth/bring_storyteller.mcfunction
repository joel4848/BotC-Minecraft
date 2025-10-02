# teleports the storyteller to the booth

scoreboard players set @a[scores={Storyteller=1}] Booth 1
execute at @e[limit=1,tag=boothstoryteller,type=marker] run teleport @a[scores={Storyteller=1}] ~ ~ ~ facing entity @e[limit=1,tag=boothplayer,type=marker]