# Handles case where votes are insufficient for execution

# Announce result using selector, then clear nomination

execute if score #og_enabled temp matches 0 run execute unless score #storyteller Nominated matches 1 run tellraw @a [{"text":"","color":"green"},{"score":{"name":"#vote_tally","objective":"temp"}},{"text":" votes is not enough to mark "},{"selector":"@a[scores={Nominated=1}]"},{"text":" for execution."}]
execute if score #og_enabled temp matches 0 run execute if score #storyteller Nominated matches 1 run tellraw @a [{"text":"","color":"green"},{"score":{"name":"#vote_tally","objective":"temp"}},{"text":" votes is not enough to mark The Storyteller for execution"}]

execute if score #og_enabled temp matches 1 run execute unless score #storyteller Nominated matches 1 run tellraw @a[scores={Storyteller=1}] [{"text":"","color":"green"},{"score":{"name":"#vote_tally","objective":"temp"}},{"text":" votes is not enough to mark "},{"selector":"@a[scores={Nominated=1}]"},{"text":" for execution."}]
execute if score #og_enabled temp matches 1 run execute if score #storyteller Nominated matches 1 run tellraw @a[scores={Storyteller=1}] [{"text":"","color":"green"},{"score":{"name":"#vote_tally","objective":"temp"}},{"text":" votes is not enough to mark The Storyteller for execution"}]

execute if score #og_enabled temp matches 1 run tellraw @a [{"color":"red","text":"The Organ Grinder obscures the result...","underlined":false}]

# Clear nominated status and glowing

execute as @a[scores={Nominated=1}] run scoreboard players set @s Nominated 0
team join Alive @a[scores={Alive=1}]
team join Dead @a[scores={Alive=0}]
team join Storyteller @a[scores={Storyteller=1}]
effect clear @a glowing

# Hide nominated annoucement

scoreboard players set #player_currently_nominated temp 0
