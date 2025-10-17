# Announce who has nominated whom

tellraw @a [{"color":"gold","text":"------------------------------------"}]
tellraw @a [{"color":"gold","selector":"@a[scores={Nominated=1}]","underlined":true},{"text":" is starting a cult! Who wants to join?","underlined":false}]
tellraw @a [{"color":"gold","text":"------------------------------------"}]

# Start titlebar announcement of nominated player

scoreboard players set #player_currently_nominated temp 1

function extras:cult_leader/cult_title_announcement