scoreboard players set @a[scores={Player=-1}] Storyteller 0
scoreboard players set @a[scores={Player=-10}] Alive 0
item replace entity @a[scores={Player=-10}] armor.head with minecraft:golden_helmet 1
item replace entity @a[scores={Player=-10}] armor.chest with golden_chestplate 1
execute as @a[scores={Player=-10}] run team join Dead