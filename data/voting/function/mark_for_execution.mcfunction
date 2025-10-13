# Marks the nominated player for execution

# Announce result first (while we can still target the nominated player)

execute if score #og_enabled temp matches 0 run execute unless score #storyteller Nominated matches 1 run tellraw @a [{"text":"","color":"red"},{"score":{"name":"#vote_tally","objective":"temp"}},{"text":" votes is enough to mark "},{"selector":"@a[scores={Nominated=1}]"},{"text":" for execution."}]
execute if score #og_enabled temp matches 0 run execute if score #storyteller Nominated matches 1 run tellraw @a [{"text":"","color":"red"},{"score":{"name":"#vote_tally","objective":"temp"}},{"text":" votes is enough to mark "},{"text":"The Storyteller","color":"blue"},{"text":" for execution"}]

execute if score #og_enabled temp matches 1 run execute unless score #storyteller Nominated matches 1 run tellraw @a[scores={Storyteller=1}] [{"text":"","color":"red"},{"score":{"name":"#vote_tally","objective":"temp"}},{"text":" votes is enough to mark "},{"selector":"@a[scores={Nominated=1}]"},{"text":" for execution."}]
execute if score #og_enabled temp matches 1 run execute if score #storyteller Nominated matches 1 run tellraw @a[scores={Storyteller=1}] [{"text":"","color":"red"},{"score":{"name":"#vote_tally","objective":"temp"}},{"text":" votes is enough to mark "},{"text":"The Storyteller","color":"blue"},{"text":" for execution"}]

execute if score #og_enabled temp matches 1 run tellraw @a [{"color":"red","text":"The Organ Grinder obscures the result...","underlined":false}]

# Clear all previous marks

scoreboard players set @a Marked 0
team join Alive @a[scores={Alive=1}]
team join Dead @a[scores={Alive=0}]
team join Storyteller @a[scores={Storyteller=1}]

# Mark the nominated player and clear/reapply glowing (necessary for OG mode)

effect clear @a glowing

execute if score #storyteller Nominated matches 1 run execute as @a[scores={Storyteller=1}] run scoreboard players set @s Nominated 1
execute if score #storyteller Nominated matches 1 run scoreboard players set #storyteller Nominated 0
execute as @a[scores={Nominated=1}] run scoreboard players set @s Marked 1
execute if score #og_enabled temp matches 0 run execute as @a[scores={Nominated=1}] run team join Marked @s
execute as @a[scores={Nominated=1}] run scoreboard players set @s Nominated 0

execute if score #og_enabled temp matches 0 run effect give @a[scores={Marked=1}] glowing infinite 99 true
execute if score #og_enabled temp matches 0 run function nomination:marked_particles

# Set has anyone been marked to 1

scoreboard players set #has_anyone_been_marked temp 1

# Hide nominated announcement

scoreboard players set #player_currently_nominated temp 0