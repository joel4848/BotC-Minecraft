# Calculate half of player count

scoreboard players operation #required_votes temp = player_count PlayerCount
scoreboard players add #required_votes temp 1
scoreboard players operation #required_votes temp /= #2 const

# Announce nominated player

title @a actionbar {"text":"","extra":[{"selector":"@a[scores={Nominated=1}]","color":"gold"},{"text":" is nominated for exile - ","color":"aqua"},{"score":{"name":"#required_votes","objective":"temp"},"color":"green"},{"text":" votes required to mark for execution","color":"aqua"}]}

execute if score #player_currently_nominated temp matches 1 run schedule function voting:exile/process/nominated_title_announcement 1t replace