scoreboard players set @a[scores={Player=-1}] Storyteller 0
scoreboard players set @a[scores={Player=-15}] Alive 0
$item replace entity @a[scores={Player=-15}] armor.head with player_head[profile={name:"$(player_15_username)"},custom_data={name:$(player_15_username)}] 1
item replace entity @a[scores={Player=-15}] armor.feet with golden_boots 1
execute as @a[scores={Player=-15}] run team join Dead