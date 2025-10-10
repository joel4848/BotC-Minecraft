# Exiles the nominated player

# Announce result first (while we can still target the nominated player)

tellraw @a [{"text":"","color":"red"},{"score":{"name":"#exile_vote_tally","objective":"temp"}},{"text":" votes is enough to exile "},{"selector":"@a[scores={Nominated=1}]"}]

# Exile the nominated player and clear/reapply glowing (necessary for OG mode)

effect clear @a[scores={Nominated=1}] glowing

execute if score @e[scores={Nominated=1},limit=1] Player matches -1 run function players:kill_revive/kill {player:1}
execute if score @e[scores={Nominated=1},limit=1] Player matches -2 run function players:kill_revive/kill {player:2}
execute if score @e[scores={Nominated=1},limit=1] Player matches -3 run function players:kill_revive/kill {player:3}
execute if score @e[scores={Nominated=1},limit=1] Player matches -4 run function players:kill_revive/kill {player:4}
execute if score @e[scores={Nominated=1},limit=1] Player matches -5 run function players:kill_revive/kill {player:5}
execute if score @e[scores={Nominated=1},limit=1] Player matches -6 run function players:kill_revive/kill {player:6}
execute if score @e[scores={Nominated=1},limit=1] Player matches -7 run function players:kill_revive/kill {player:7}
execute if score @e[scores={Nominated=1},limit=1] Player matches -8 run function players:kill_revive/kill {player:8}
execute if score @e[scores={Nominated=1},limit=1] Player matches -9 run function players:kill_revive/kill {player:9}
execute if score @e[scores={Nominated=1},limit=1] Player matches -10 run function players:kill_revive/kill {player:10}
execute if score @e[scores={Nominated=1},limit=1] Player matches -11 run function players:kill_revive/kill {player:11}
execute if score @e[scores={Nominated=1},limit=1] Player matches -12 run function players:kill_revive/kill {player:12}
execute if score @e[scores={Nominated=1},limit=1] Player matches -13 run function players:kill_revive/kill {player:13}
execute if score @e[scores={Nominated=1},limit=1] Player matches -14 run function players:kill_revive/kill {player:14}
execute if score @e[scores={Nominated=1},limit=1] Player matches -15 run function players:kill_revive/kill {player:15}
execute if score @e[scores={Nominated=1},limit=1] Player matches -16 run function players:kill_revive/kill {player:16}

scoreboard players set @a[scores={Nominated=1},limit=1] VoteTally 0

execute as @a[scores={Nominated=1}] run scoreboard players set @s Nominated 0

# Hide nominated announcement

scoreboard players set #player_currently_nominated temp 0

# Revert back to normal votelights

schedule function voting:exile/setup/remove_exile_voting 20t

schedule function clock_hand:remove_hands 20t