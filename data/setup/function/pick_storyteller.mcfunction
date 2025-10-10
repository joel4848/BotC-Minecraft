scoreboard players reset @s Player
team remove Storyteller
team add Storyteller
team modify Storyteller color blue
team modify Storyteller nametagVisibility never
execute as @s run team join Storyteller
scoreboard objectives remove Storyteller
scoreboard objectives add Storyteller dummy
scoreboard players set @a Storyteller 0
scoreboard players set @s Storyteller 1
scoreboard players reset @s Alive
execute as @s run function players:usernames/update_username/storyteller