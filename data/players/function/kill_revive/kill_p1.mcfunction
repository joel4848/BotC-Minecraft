scoreboard players set @a[scores={Player=-1}] Storyteller 0
scoreboard players set @a[scores={Player=-1}] Alive 0
item replace entity @a[scores={Player=-1}] armor.head with minecraft:golden_helmet 1
execute as @a[scores={Player=-1}] run team join Dead