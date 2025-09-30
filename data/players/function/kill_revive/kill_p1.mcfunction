scoreboard players set @a[scores={Player=-1}] Storyteller 0
scoreboard players set @a[scores={Player=-1}] Alive 0
# item replace entity @a[scores={Player=-1}] armor.head with minecraft:golden_helmet 1

$item replace entity @a[scores={Player=-1}] armor.head with player_head[profile={name:"$(player_1_username)"}] 1

item replace entity @a[scores={Player=-1}] armor.feet with golden_boots 1
execute as @a[scores={Player=-1}] run team join Dead