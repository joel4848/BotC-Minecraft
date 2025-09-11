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

execute if score #og_enabled temp matches 1 run tellraw @a [{"text":"?","color":"light_purple"},{"text":" votes are needed to mark for execution.","color":"red"}]

# Non-hidden singular

execute if score #required_votes temp matches 1 run execute if score #og_enabled temp matches 0 run execute if score #has_anyone_been_marked temp matches 0 run tellraw @a [{"text":"","color":"green"},{"score":{"name":"#required_votes","objective":"temp"}},{"text":" vote is needed to mark for execution."}]
execute if score #highest_previous temp matches 1 run execute if score #og_enabled temp matches 0 run execute if score #has_anyone_been_marked temp matches 1 run tellraw @a [{"text":"","color":"green"},{"score":{"name":"#highest_previous","objective":"temp"}},{"text":" votee is needed to tie - "},{"score":{"name":"#beat_highest_previous","objective":"temp"}},{"text":" are needed to mark for execution."}]
 
execute if score #required_votes temp matches 1 run execute if score #og_enabled temp matches 1 run execute if score #has_anyone_been_marked temp matches 0 run tellraw @a[scores={Storyteller=1}] [{"text":"","color":"green"},{"score":{"name":"#required_votes","objective":"temp"}},{"text":" votee is needed to mark for execution."}]
execute if score #highest_previous temp matches 1 run execute if score #og_enabled temp matches 1 run execute if score #has_anyone_been_marked temp matches 1 run tellraw @a[scores={Storyteller=1}] [{"text":"","color":"green"},{"score":{"name":"#highest_previous","objective":"temp"}},{"text":" votee is needed to tie - "},{"score":{"name":"#beat_highest_previous","objective":"temp"}},{"text":" are needed to mark for execution."}]

# Non-hidden plural

execute unless score #required_votes temp matches 1 run execute if score #og_enabled temp matches 0 run execute if score #has_anyone_been_marked temp matches 0 run tellraw @a [{"text":"","color":"green"},{"score":{"name":"#required_votes","objective":"temp"}},{"text":" votes are needed to mark for execution."}]
execute unless score #highest_previous temp matches 1 run execute if score #og_enabled temp matches 0 run execute if score #has_anyone_been_marked temp matches 1 run tellraw @a [{"text":"","color":"green"},{"score":{"name":"#highest_previous","objective":"temp"}},{"text":" votes are needed to tie - "},{"score":{"name":"#beat_highest_previous","objective":"temp"}},{"text":" are needed to mark for execution."}]

execute unless score #required_votes temp matches 1 run execute if score #og_enabled temp matches 1 run execute if score #has_anyone_been_marked temp matches 0 run tellraw @a[scores={Storyteller=1}] [{"text":"","color":"green"},{"score":{"name":"#required_votes","objective":"temp"}},{"text":" votes are needed to mark for execution."}]
execute unless score #highest_previous temp matches 1 run execute if score #og_enabled temp matches 1 run execute if score #has_anyone_been_marked temp matches 1 run tellraw @a[scores={Storyteller=1}] [{"text":"","color":"green"},{"score":{"name":"#highest_previous","objective":"temp"}},{"text":" votes are needed to tie - "},{"score":{"name":"#beat_highest_previous","objective":"temp"}},{"text":" are needed to mark for execution."}]

# Start titlebar announcement of nominated player

scoreboard players set #player_currently_nominated temp 1

function nomination:nominated_title_announcement