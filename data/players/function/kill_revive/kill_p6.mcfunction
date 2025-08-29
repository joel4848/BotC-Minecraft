scoreboard players set @a[scores={Player=-1}] Storyteller 0
scoreboard players set @a[scores={Player=-6}] Alive 0
item replace entity @a[scores={Player=-6}] armor.head with minecraft:golden_helmet 1
execute as @a[scores={Player=-6}] run team join Dead