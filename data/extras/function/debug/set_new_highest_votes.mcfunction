
execute unless score #new_highest_vote_tally temp matches -1 run scoreboard players operation #highest_previous temp = #new_highest_vote_tally temp

execute unless score #new_highest_vote_tally temp matches -1 run execute as @a[scores={VoteTally=1..}] run scoreboard players operation @s VoteTally = #new_highest_vote_tally temp

tellraw @a[scores={Storyteller=1}] [{"color":"light_purple","text":"If necessary, now open ["},{"clickEvent":{"action":"run_command","value":"/openguiscreen execution"},"color":"gold","text":"Execution","underlined":true},"] and either mark the correct player for nomination, or clear the mark."]
