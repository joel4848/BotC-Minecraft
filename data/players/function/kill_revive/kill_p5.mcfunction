scoreboard players set @a[scores={Player=-1}] Storyteller 0
scoreboard players set @a[scores={Player=-5}] Alive 0
$item replace entity @a[scores={Player=-5}] armor.head with player_head[profile={name:"$(player_5_username)"},custom_data={name:$(player_5_username)}] 1
item replace entity @a[scores={Player=-5}] armor.feet with golden_boots 1
execute as @a[scores={Player=-5}] run team join Dead