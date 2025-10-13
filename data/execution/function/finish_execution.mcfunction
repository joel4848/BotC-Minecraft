# setblock 167 91 2 minecraft:cobbled_deepslate

scoreboard players set #execution_running temp 0

# scoreboard players set @a[scores={Marked=1}] Alive 0

team leave @a[scores={Marked=1}]

# execute as @a[scores={Marked=1}] run execute unless score @s Storyteller matches 1 run team join Dead

execute as @a[scores={Marked=1}] run execute if score @s Storyteller matches 1 run team join Storyteller

effect clear @a[scores={Marked=1}] glowing
# effect give @a[scores={Marked=1}] invisibility infinite 99 true

# kill executed player

execute if score @e[scores={Marked=1},limit=1] Storyteller matches 1 run function setup:give_st_invisibility with storage minecraft:joelbotc

execute if score @e[scores={Marked=1},limit=1] Player matches -1 run function players:kill_revive/kill {player:1}
execute if score @e[scores={Marked=1},limit=1] Player matches -2 run function players:kill_revive/kill {player:2}
execute if score @e[scores={Marked=1},limit=1] Player matches -3 run function players:kill_revive/kill {player:3}
execute if score @e[scores={Marked=1},limit=1] Player matches -4 run function players:kill_revive/kill {player:4}
execute if score @e[scores={Marked=1},limit=1] Player matches -5 run function players:kill_revive/kill {player:5}
execute if score @e[scores={Marked=1},limit=1] Player matches -6 run function players:kill_revive/kill {player:6}
execute if score @e[scores={Marked=1},limit=1] Player matches -7 run function players:kill_revive/kill {player:7}
execute if score @e[scores={Marked=1},limit=1] Player matches -8 run function players:kill_revive/kill {player:8}
execute if score @e[scores={Marked=1},limit=1] Player matches -9 run function players:kill_revive/kill {player:9}
execute if score @e[scores={Marked=1},limit=1] Player matches -10 run function players:kill_revive/kill {player:10}
execute if score @e[scores={Marked=1},limit=1] Player matches -11 run function players:kill_revive/kill {player:11}
execute if score @e[scores={Marked=1},limit=1] Player matches -12 run function players:kill_revive/kill {player:12}
execute if score @e[scores={Marked=1},limit=1] Player matches -13 run function players:kill_revive/kill {player:13}
execute if score @e[scores={Marked=1},limit=1] Player matches -14 run function players:kill_revive/kill {player:14}
execute if score @e[scores={Marked=1},limit=1] Player matches -15 run function players:kill_revive/kill {player:15}
execute if score @e[scores={Marked=1},limit=1] Player matches -16 run function players:kill_revive/kill {player:16}

scoreboard players set @a[scores={Marked=1}] Wheee 1

function execution:execution_messages/run_display_message

scoreboard players set @a[scores={Marked=1}] Marked 0

schedule clear execution:dumb/lock_to_seats