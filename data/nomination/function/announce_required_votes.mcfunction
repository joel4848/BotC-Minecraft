# Announce who has nominated whom

tellraw @a [{"color":"gold","text":"------------------------------------"}]
execute unless score #storyteller Nominated matches 1 run tellraw @a [{"color":"gold","selector":"@a[scores={Nominator=1}]","underlined":true},{"text":" nominated ","underlined":false},{"selector":"@a[scores={Nominated=1}]","underlined":true}]
execute if score #storyteller Nominated matches 1 run tellraw @a [{"color":"gold","selector":"@a[scores={Nominator=1}]","underlined":true},{"text":" nominated ","underlined":false},{"text":"The Storyteller","underlined":true,"color":"blue"}]
tellraw @a [{"color":"gold","text":"------------------------------------"}]

# Display how many votes are required to mark/tie

# Calculate required votes (half of living players rounded up)

function voting:calculate_required_votes

# Get the current highest vote tally from previously voted players (excluding the current nominee)

scoreboard players set #highest_previous temp 0
execute as @a[scores={VoteTally=1..}] unless entity @s[scores={Nominated=1}] run scoreboard players operation #highest_previous temp > @s VoteTally

# Calculate number of votes needed to beat highest previous tally (i.e. highest previous + 1)

scoreboard players set #beat_highest_previous temp 0
scoreboard players operation #beat_highest_previous temp = #highest_previous temp
scoreboard players add #beat_highest_previous temp 1

# Check if someone else is currently marked for execution

scoreboard players set #someone_marked temp 0
execute as @a[scores={Marked=1}] unless entity @s[scores={Nominated=1}] run scoreboard players set #someone_marked temp 1
execute if score #storyteller Nominated matches 1 run scoreboard players set #someone_marked temp 1

# Announce required votes

# OG Hidden

execute if score #og_enabled temp matches 1 run tellraw @a[scores={Player=..0}] [{"text":"?","color":"light_purple"},{"text":" votes are required to mark for execution.","color":"red"}]

# Singular

execute if score #required_votes temp matches 1 run execute if score #og_enabled temp matches 0 run execute if score #has_anyone_been_marked temp matches 0 run tellraw @a [{"text":"","color":"green"},{"score":{"name":"#required_votes","objective":"temp"}},{"text":" vote is needed to mark for execution."}]
execute if score #highest_previous temp matches 1 run execute if score #og_enabled temp matches 0 run execute if score #has_anyone_been_marked temp matches 1 run tellraw @a [{"text":"","color":"green"},{"score":{"name":"#highest_previous","objective":"temp"}},{"text":" votes is needed to tie - "},{"score":{"name":"#beat_highest_previous","objective":"temp"}},{"text":" are required to mark for execution."}]
 
execute if score #required_votes temp matches 1 run execute if score #og_enabled temp matches 1 run execute if score #has_anyone_been_marked temp matches 0 run tellraw @a[scores={Storyteller=1}] [{"text":"","color":"green"},{"score":{"name":"#required_votes","objective":"temp"}},{"text":" votes is needed to mark for execution."},{"color":"red","text":" (hidden from players by OG)","underlined":false}]
execute if score #highest_previous temp matches 1 run execute if score #og_enabled temp matches 1 run execute if score #has_anyone_been_marked temp matches 1 run tellraw @a[scores={Storyteller=1}] [{"text":"","color":"green"},{"score":{"name":"#highest_previous","objective":"temp"}},{"text":" votes is needed to tie - "},{"score":{"name":"#beat_highest_previous","objective":"temp"}},{"text":" are required to mark for execution."},{"color":"red","text":" (hidden from players by OG)","underlined":false}]

# Plural

execute unless score #required_votes temp matches 1 run execute if score #og_enabled temp matches 0 run execute if score #has_anyone_been_marked temp matches 0 run tellraw @a [{"text":"","color":"green"},{"score":{"name":"#required_votes","objective":"temp"}},{"text":" votes are required to mark for execution."}]
execute unless score #highest_previous temp matches 1 run execute if score #og_enabled temp matches 0 run execute if score #has_anyone_been_marked temp matches 1 run tellraw @a [{"text":"","color":"green"},{"score":{"name":"#highest_previous","objective":"temp"}},{"text":" votes are required to tie - "},{"score":{"name":"#beat_highest_previous","objective":"temp"}},{"text":" are required to mark for execution."}]

execute unless score #required_votes temp matches 1 run execute if score #og_enabled temp matches 1 run execute if score #has_anyone_been_marked temp matches 0 run tellraw @a[scores={Storyteller=1}] [{"text":"","color":"green"},{"score":{"name":"#required_votes","objective":"temp"}},{"text":" votes are required to mark for execution."},{"color":"red","text":" (hidden from players by OG)","underlined":false}]
execute unless score #highest_previous temp matches 1 run execute if score #og_enabled temp matches 1 run execute if score #has_anyone_been_marked temp matches 1 run tellraw @a[scores={Storyteller=1}] [{"text":"","color":"green"},{"score":{"name":"#highest_previous","objective":"temp"}},{"text":" votes are required to tie - "},{"score":{"name":"#beat_highest_previous","objective":"temp"}},{"text":" are required to mark for execution."},{"color":"red","text":" (hidden from players by OG)","underlined":false}]

# Start titlebar announcement of nominated player

scoreboard players set #player_currently_nominated temp 1

function nomination:actionbar_required_votes