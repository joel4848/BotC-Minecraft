# Evaluates the final vote tally and determines execution status

# Store the vote tally for the nominated player

execute unless score #storyteller Nominated matches 1 run execute as @e[scores={Nominated=1}] run scoreboard players operation @s VoteTally = #vote_tally temp
execute if score #storyteller Nominated matches 1 run execute as @a[scores={Storyteller=1}] run scoreboard players operation @s VoteTally = #vote_tally temp

# Calculate required votes (half of living players rounded up)

function voting:calculate_required_votes

# Get the current highest vote tally from previously voted players (excluding the current nominee)

scoreboard players set #highest_previous temp 0
execute as @a[scores={VoteTally=1..}] unless entity @s[scores={Nominated=1}] run scoreboard players operation #highest_previous temp > @s VoteTally

# Check if someone else is currently marked for execution

scoreboard players set #someone_marked temp 0
execute as @a[scores={Marked=1}] unless entity @s[scores={Nominated=1}] run scoreboard players set #someone_marked temp 1

# Determine the outcome with clearer logic

execute if score #vote_tally temp < #required_votes temp run function voting:insufficient_votes
execute if score #vote_tally temp >= #required_votes temp if score #vote_tally temp > #highest_previous temp run function voting:mark_for_execution
execute if score #vote_tally temp >= #required_votes temp if score #vote_tally temp = #highest_previous temp if score #highest_previous temp matches 1.. run function voting:tie_vote

# Unlock players from seats

scoreboard players set #vote_running temp 0

# OG mode

# Enable hide ghost votes if OG mode enabled

execute if score #og_enabled temp matches 1 run function extras:organ_grinder/hide_ghost_votes/set_scores

execute if score #og_enabled temp matches 1 run function voting:reset_vote

execute if score #og_enabled temp matches 1 run schedule function extras:organ_grinder/hide_ghost_votes/og_hgv_enable 2t

# Reset vote automatically after voting complete

schedule function voting:reset_vote 2s

# Prompt to run execution if a player is marked

execute if score #someone_marked temp matches 1 run tellraw @a[scores={Storyteller=1}] [{"color":"light_purple","text":"Click here to execute the marked player: ["},{"clickEvent":{"action":"run_command","value":"/function execution:run_execution"},"color":"gold","text":"Run Execution","underlined":true},{"color":"light_purple","text":"]"}]
