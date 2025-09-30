scoreboard players set @a[scores={Player=-1}] Storyteller 0
scoreboard players set @a[scores={Player=-14}] Alive 0
$item replace entity @a[scores={Player=-14}] armor.head with player_head[profile={name:"$(player_14_username)"}] 1
item replace entity @a[scores={Player=-14}] armor.chest with golden_chestplate 1
execute as @a[scores={Player=-14}] run team join Dead