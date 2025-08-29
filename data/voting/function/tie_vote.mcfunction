# Handles tie votes that result in no execution

# Clear all marks and nominations

scoreboard players set @a Marked 0
scoreboard players set @a Nominated 0
team join Alive @a[scores={Alive=1}]
team join Dead @a[scores={Alive=0}]
team join Storyteller @a[scores={Storyteller=1}]
effect clear @a glowing

# Announce result

execute if score #og_enabled temp matches 0 run tellraw @a [{"text":"","color":"green"},{"score":{"name":"#vote_tally","objective":"temp"}},{"text":" votes is a tie. Nobody is marked for execution."}]
execute if score #og_enabled temp matches 1 run tellraw @a[scores={Storyteller=1}] [{"text":"","color":"green"},{"score":{"name":"#vote_tally","objective":"temp"}},{"text":" votes is a tie. Nobody is marked for execution."}]

execute if score #og_enabled temp matches 1 run tellraw @a [{"color":"red","text":"The Organ Grinder obscures the result...","underlined":false}]

# Hide nominated announcement

scoreboard players set #player_currently_nominated temp 0