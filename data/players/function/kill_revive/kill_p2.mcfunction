scoreboard players set @a[scores={Player=-1}] Storyteller 0
scoreboard players set @a[scores={Player=-2}] Alive 0
item replace entity @a[scores={Player=-2}] armor.head with minecraft:golden_helmet 1
item replace entity @a[scores={Player=-2}] armor.chest with golden_chestplate 1
execute as @a[scores={Player=-2}] run team join Dead