effect clear @a[scores={Nominated=1}] glowing
execute if score @a[scores={Nominated=1},limit=1] Alive matches 1 run team join Alive @a[scores={Nominated=1},limit=1]
execute if score @a[scores={Nominated=1},limit=1] Alive matches 0 run team join Dead @a[scores={Nominated=1},limit=1]
scoreboard players set @a Nominated 0
team empty Nominated
scoreboard players set #storyteller Player -17
scoreboard players set #storyteller Nominated 1
effect give @a[scores={Storyteller=1}] glowing infinite 99 true

# function voting:reset_vote

function nomination:announce_required_votes

function nomination:nominated_particles

execute if score #big_hand_present temp matches 0 run function clock_hand:big_hand/summon_neutral
execute if score #big_hand_present temp matches 0 run scoreboard players set #big_hand_present temp 1


scoreboard players set #big_hand_target temp 0

scoreboard players set #nominated_player_big_hand temp 0

execute store result storage joelbotc nominated_player_big_hand int 1 run scoreboard players get #nominated_player_big_hand temp

schedule function nomination:call_big_hand_nominate 1t

function clock_hand:big_hand/start