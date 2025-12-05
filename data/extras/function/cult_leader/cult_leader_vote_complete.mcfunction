
execute if score #is_cult_leader_vote temp matches 1 run tellraw @a [{"color":"light_purple","text":"\n... but is it enough?"}]

# Revert back to normal votelights

schedule function voting:exile/setup/remove_exile_voting 20t

schedule function clock_hand:remove_hands 20t

scoreboard players set #vote_running temp 0

# function nomination:clear_nomination

# Clear nominated status and glowing

execute as @a[scores={Nominated=1}] run scoreboard players set @s Nominated 0
execute as @a[scores={Marked=0,Alive=1},team=!Spectator] run team join Alive @s
execute as @a[scores={Marked=0,Alive=0},team=!Spectator] run team join Dead @s
execute as @a[scores={Marked=0,Storyteller=1}] run team join Storyteller @s
execute as @a[scores={Marked=0 }] run effect clear @s glowing
# scoreboard players set @a[scores={Nominated=1},limit=1] VoteTally 0
execute as @a[scores={Nominated=1}] run scoreboard players set @s Nominated 0

# Hide nominated annoucement

scoreboard players set #player_currently_nominated temp 0

# Revert back to normal votelights

schedule function voting:exile/setup/remove_exile_voting 20t

schedule function clock_hand:remove_hands 20t
