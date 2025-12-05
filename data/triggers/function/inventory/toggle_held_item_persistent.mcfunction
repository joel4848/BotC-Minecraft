scoreboard players reset @s toggle_held_item_persistent
execute unless data entity @s SelectedItem run return 0
execute store result score @s item_is_currently_persistent run data get entity @s SelectedItem.components."minecraft:custom_data".persistent
execute if score @s item_is_currently_persistent matches 0 run function triggers:inventory/set_item_persistence
execute if score @s item_is_currently_persistent matches 1 run function triggers:inventory/clear_item_persistence
scoreboard players reset @s item_is_currently_persistent
