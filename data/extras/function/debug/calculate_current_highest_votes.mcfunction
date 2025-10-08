
# Get the current highest vote tally from previously voted players (excluding the current nominee)

scoreboard players set #debug_highest_previous temp 0
execute as @a[scores={VoteTally=1..}] run scoreboard players operation #debug_highest_previous temp > @s VoteTally
