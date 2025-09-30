scoreboard players set @a[scores={Player=-1}] Storyteller 0
scoreboard players set @a[scores={Player=-16}] Alive 0
item replace entity @a[scores={Player=-16}] armor.head with minecraft:golden_helmet 1
item replace entity @a[scores={Player=-16}] armor.chest with golden_chestplate 1
execute as @a[scores={Player=-16}] run team join Dead