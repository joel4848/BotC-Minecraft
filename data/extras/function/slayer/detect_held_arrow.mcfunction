execute if score #immersive_pvp temp matches 0 run return 0
execute if score #pvp_enabled temp matches 1 run return 0
execute unless data storage extras:slayer allowed run return 0
execute if data storage extras:slayer arrow_shot run return 0

data remove storage extras:slayer weapon_held
execute as @a[scores={Player=..-1}] if data entity @s SelectedItem.components."minecraft:custom_data".slayer_weapon run data merge storage extras:slayer {weapon_held:true}

execute if data storage extras:slayer weapon_held run gamerule pvp true
execute unless data storage extras:slayer weapon_held run gamerule pvp false

schedule function extras:slayer/detect_held_arrow 1s
