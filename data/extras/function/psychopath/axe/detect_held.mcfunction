execute if score #immersive_pvp temp matches 0 run return 0
execute if score #pvp_enabled temp matches 1 run return 0
execute unless data storage extras:psychopath allowed run return 0

data remove storage extras:psychopath axe_held
execute as @a[scores={Player=..-1}] if data entity @s SelectedItem.components."minecraft:custom_data".psychopath_axe run data merge storage extras:psychopath {axe_held:true}

execute if data storage extras:psychopath axe_held run gamerule pvp true
execute unless data storage extras:psychopath axe_held run gamerule pvp false

schedule function extras:psychopath/axe/detect_held 1s
