execute as @a[gamemode=spectator,team=!Spectator] unless score @s Player = @s Player run function triggers:spectator/join_team

execute as @a[scores={become_spectator=1..}] unless score @s Player = @s Player run function triggers:spectator/join_team
execute as @a[scores={become_spectator=1..}] if score @s Player = @s Player run function triggers:spectator/fail
execute as @a[scores={clear_inventory=1..}] run function triggers:inventory/clear_inventory
execute as @a[scores={clear_books=1..}] run function triggers:inventory/clear_books
execute as @a[scores={toggle_held_item_persistent=1..}] run function triggers:inventory/toggle_held_item_persistent

scoreboard players enable @a become_spectator
scoreboard players enable @a clear_inventory
scoreboard players enable @a clear_books
scoreboard players enable @a toggle_held_item_persistent
