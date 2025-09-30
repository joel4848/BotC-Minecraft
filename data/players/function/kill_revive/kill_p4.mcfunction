scoreboard players set @a[scores={Player=-1}] Storyteller 0
scoreboard players set @a[scores={Player=-4}] Alive 0
$item replace entity @a[scores={Player=-4}] armor.head with player_head[profile={name:"$(player_4_username)"}] 1
item replace entity @a[scores={Player=-4}] armor.chest with golden_chestplate 1
execute as @a[scores={Player=-4}] run team join Dead