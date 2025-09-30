scoreboard players set @a[scores={Player=-1}] Storyteller 0
scoreboard players set @a[scores={Player=-8}] Alive 0
$item replace entity @a[scores={Player=-8}] armor.head with player_head[profile={name:"$(player_8_username)"},custom_data={name:$(player_8_username)}] 1
item replace entity @a[scores={Player=-8}] armor.feet with golden_boots 1
execute as @a[scores={Player=-8}] run team join Dead