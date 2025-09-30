# setblock 167 91 2 minecraft:cobbled_deepslate

scoreboard players set #execution_running temp 0

# scoreboard players set @a[scores={Marked=1}] Alive 0
team leave @a[scores={Marked=1}]
# execute as @a[scores={Marked=1}] run execute unless score @s Storyteller matches 1 run team join Dead
execute as @a[scores={Marked=1}] run execute if score @s Storyteller matches 1 run team join Storyteller

effect clear @a[scores={Marked=1}] glowing
effect give @a[scores={Marked=1}] invisibility infinite 99 true

# item replace entity @a[scores={Marked=1}] armor.head with minecraft:golden_helmet 1

execute if score @e[scores={Marked=1},limit=1] Player matches -1 run function players:kill_revive/kill_p1 with storage minecraft:joelbotc
execute if score @e[scores={Marked=1},limit=1] Player matches -2 run function players:kill_revive/kill_p2 with storage minecraft:joelbotc
execute if score @e[scores={Marked=1},limit=1] Player matches -3 run function players:kill_revive/kill_p3 with storage minecraft:joelbotc
execute if score @e[scores={Marked=1},limit=1] Player matches -4 run function players:kill_revive/kill_p4 with storage minecraft:joelbotc
execute if score @e[scores={Marked=1},limit=1] Player matches -5 run function players:kill_revive/kill_p5 with storage minecraft:joelbotc
execute if score @e[scores={Marked=1},limit=1] Player matches -6 run function players:kill_revive/kill_p6 with storage minecraft:joelbotc
execute if score @e[scores={Marked=1},limit=1] Player matches -7 run function players:kill_revive/kill_p7 with storage minecraft:joelbotc
execute if score @e[scores={Marked=1},limit=1] Player matches -8 run function players:kill_revive/kill_p8 with storage minecraft:joelbotc
execute if score @e[scores={Marked=1},limit=1] Player matches -9 run function players:kill_revive/kill_p9 with storage minecraft:joelbotc
execute if score @e[scores={Marked=1},limit=1] Player matches -10 run function players:kill_revive/kill_p10 with storage minecraft:joelbotc
execute if score @e[scores={Marked=1},limit=1] Player matches -11 run function players:kill_revive/kill_p11 with storage minecraft:joelbotc
execute if score @e[scores={Marked=1},limit=1] Player matches -12 run function players:kill_revive/kill_p12 with storage minecraft:joelbotc
execute if score @e[scores={Marked=1},limit=1] Player matches -13 run function players:kill_revive/kill_p13 with storage minecraft:joelbotc
execute if score @e[scores={Marked=1},limit=1] Player matches -14 run function players:kill_revive/kill_p14 with storage minecraft:joelbotc
execute if score @e[scores={Marked=1},limit=1] Player matches -15 run function players:kill_revive/kill_p15 with storage minecraft:joelbotc
execute if score @e[scores={Marked=1},limit=1] Player matches -16 run function players:kill_revive/kill_p16 with storage minecraft:joelbotc

# item replace entity @a[scores={Marked=1}] armor.feet with golden_boots 1

scoreboard players set @a[scores={Marked=1}] Wheee 1

function execution:execution_messages/run_display_message

scoreboard players set @a[scores={Marked=1}] Marked 0