# Announce who has nominated whom

tellraw @a [{"color":"gold","text":"------------------------------------"}]
tellraw @a [{"color":"gold","selector":"@a[scores={Nominated=1}]","underlined":true},{"text":" is nominated for exile","underlined":false}]
tellraw @a [{"color":"gold","text":"------------------------------------"}]

# Display how many votes are required to mark/tie

# Calculate how many votes are needed (half of all players, rounded up)

# Calculate half rounded up: (player_count PlayerCount + 1) / 2
scoreboard players operation #required_votes_traveller temp = player_count PlayerCount
scoreboard players add #required_votes_traveller temp 1
scoreboard players operation #required_votes_traveller temp /= #2 const

# Announce required votes

tellraw @a [{"text":"","color":"green"},{"score":{"name":"#required_votes_traveller","objective":"temp"}},{"text":" votes are needed to exile."}]

# Start titlebar announcement of nominated player

scoreboard players set #player_currently_nominated temp 1

function voting:exile/process/nominated_title_announcement