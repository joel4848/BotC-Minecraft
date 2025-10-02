# Exiles the nominated player

# Announce result first (while we can still target the nominated player)

tellraw @a [{"text":"","color":"red"},{"score":{"name":"#vote_tally","objective":"temp"}},{"text":" votes is enough to exile "},{"selector":"@a[scores={Nominated=1}]"}]

# Exile the nominated player and clear/reapply glowing (necessary for OG mode)

effect clear @a[scores={Nominated=1}] glowing

execute as @a[scores={Nominated=1}] run scoreboard players set @s Alive 0

execute as @a[scores={Nominated=1}] run item replace entity @s armor.head with minecraft:golden_helmet 1
execute as @a[scores={Nominated=1}] run team join Dead

scoreboard players set @a[scores={Nominated=1},limit=1] VoteTally 0

execute as @a[scores={Nominated=1}] run scoreboard players set @s Nominated 0

# Hide nominated announcement

scoreboard players set #player_currently_nominated temp 0

# Revert back to normal votelights

schedule function voting:exile/setup/remove_exile_voting 20t

schedule function clock_hand:remove_hands 20t