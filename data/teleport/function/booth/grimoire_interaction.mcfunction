# only allow storyteller to use quick exit book

execute if score @s Storyteller matches 1 run function teleport:booth/exit
advancement revoke @s only teleport:grimoire_interact
advancement revoke @s only teleport:grimoire_punch