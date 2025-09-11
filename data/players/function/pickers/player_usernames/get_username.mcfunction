execute store result storage minecraft:joelbotc picked_picker int 1 run scoreboard players get #picked_picker temp

function players:pickers/player_usernames/store_uuid with storage minecraft:joelbotc

function players:pickers/player_usernames/summon_armor_stand with storage joelbotc

execute unless entity @a[scores={Player=-1}] run fmvariable set player_1_username false ‌
execute unless entity @a[scores={Player=-2}] run fmvariable set player_2_username false ‌
execute unless entity @a[scores={Player=-3}] run fmvariable set player_3_username false ‌
execute unless entity @a[scores={Player=-4}] run fmvariable set player_4_username false ‌
execute unless entity @a[scores={Player=-5}] run fmvariable set player_5_username false ‌
execute unless entity @a[scores={Player=-6}] run fmvariable set player_6_username false ‌
execute unless entity @a[scores={Player=-7}] run fmvariable set player_7_username false ‌
execute unless entity @a[scores={Player=-8}] run fmvariable set player_8_username false ‌
execute unless entity @a[scores={Player=-9}] run fmvariable set player_9_username false ‌
execute unless entity @a[scores={Player=-10}] run fmvariable set player_10_username false ‌
execute unless entity @a[scores={Player=-11}] run fmvariable set player_11_username false ‌
execute unless entity @a[scores={Player=-12}] run fmvariable set player_12_username false ‌
execute unless entity @a[scores={Player=-13}] run fmvariable set player_13_username false ‌
execute unless entity @a[scores={Player=-14}] run fmvariable set player_14_username false ‌
execute unless entity @a[scores={Player=-15}] run fmvariable set player_15_username false ‌
execute unless entity @a[scores={Player=-16}] run fmvariable set player_16_username false ‌

schedule function players:pickers/player_usernames/call_store_username 5t

schedule function players:pickers/player_usernames/call_set_fmvs 10t
