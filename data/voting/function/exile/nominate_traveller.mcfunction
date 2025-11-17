# call with voting:exile/nominate_traveller {player:%d}

# reset already nominated player

effect clear @a[scores={Nominated=1}] glowing
execute if score @a[scores={Nominated=1},limit=1] Alive matches 1 run team join Alive @a[scores={Nominated=1},limit=1]
execute if score @a[scores={Nominated=1},limit=1] Alive matches 0 run team join Dead @a[scores={Nominated=1},limit=1]
scoreboard players set @a Nominated 0
team empty Nominated

# nominate player

$team leave @a[scores={Player=-$(player)}]
$team join Nominated @a[scores={Player=-$(player)}]
$scoreboard players set @a[scores={Player=-$(player)}] Nominated 1
$effect give @a[scores={Player=-$(player)}] glowing infinite 99 true

function voting:exile/setup/set_up_exile_voting
execute unless score #is_cult_leader_vote temp matches 1 run function voting:exile/process/announce_required_votes
execute if score #is_cult_leader_vote temp matches 1 run function extras:cult_leader/announce_cult_vote
function nomination:nominated_particles

# execute if score #big_hand_present temp matches 0 run function clock_hand:big_hand/summon_neutral
# execute if score #big_hand_present temp matches 0 run scoreboard players set #big_hand_present temp 1
function clock_hand:remove_little_hand
# $scoreboard players set #big_hand_target temp $(player)
# $scoreboard players set #nominated_player_big_hand temp $(player)

# execute store result storage joelbotc nominated_player_big_hand int 1 run scoreboard players get #nominated_player_big_hand temp
# schedule function nomination:call_big_hand_nominate 1t
# function clock_hand:big_hand/start

tellraw @a[scores={Storyteller=1}] [{"color":"light_purple","text":"Click here to start vote: ["},{"clickEvent":{"action":"run_command","value":"/function voting:exile/process/start_countdown"},"color":"gold","text":"Start Vote","underlined":true},{"color":"light_purple","text":"]"}]
