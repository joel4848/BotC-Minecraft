# Run when creating a new world - sets up scoreboards, bossbars and other necessaries

# Creates scoreboards

scoreboard objectives add Player dummy "Players"
scoreboard objectives add TimerMinutes dummy
scoreboard objectives add TimerSeconds dummy
scoreboard objectives add TimerScore dummy
scoreboard objectives add TimerMax dummy
scoreboard objectives add TimerMaths dummy
scoreboard objectives add TimerPercent dummy
scoreboard objectives add TimerMaxCheck dummy
scoreboard objectives add TimerCalc dummy
scoreboard objectives add Alive dummy
scoreboard objectives add Dead dummy
scoreboard objectives add TimerPaused dummy
scoreboard objectives add TickTimer dummy
scoreboard objectives add Storyteller dummy
scoreboard objectives add Nominated dummy
scoreboard objectives add PlayerCount dummy
scoreboard objectives add Marked dummy
scoreboard objectives add LivingPlayers dummy
scoreboard objectives add dance_random dummy
scoreboard objectives add map_all dummy
scoreboard objectives add set_floor dummy
scoreboard objectives add assign trigger
scoreboard objectives add carrot minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add markerCount dummy
scoreboard objectives add chestCloneDone dummy
scoreboard objectives add lightID dummy
scoreboard objectives add GhostVoteUsedMaster dummy
scoreboard objectives add GhostVoteUsedToday dummy
scoreboard objectives add GhostVoteUnusedToday dummy
scoreboard objectives add Wheee dummy
scoreboard objectives add VoteValue dummy
scoreboard objectives add ThiefSelected dummy
scoreboard objectives add BureaucratSelected dummy
scoreboard objectives add IsBanshee dummy
scoreboard objectives add BansheeVoteValue dummy
# scoreboard objectives add  dummy


# Creates teams

team add Neutral
team add Nominated
team add Marked
team modify Marked color red
team add Alive
team modify Alive color green
team add Dead
team modify Dead color dark_green
team add Storyteller
team modify Storyteller color blue
team modify Storyteller nametagVisibility never
team modify Storyteller collisionRule pushOtherTeams

# Creates bossbar

bossbar add timerbar {"text":"0:0"}
bossbar set minecraft:timerbar players @a
bossbar set minecraft:timerbar max 180
bossbar set minecraft:timerbar color white
bossbar set minecraft:timerbar style progress
bossbar set minecraft:timerbar visible false

# Sets up constant values used by the voting system

scoreboard objectives add temp dummy
scoreboard objectives add VoteTally dummy
scoreboard objectives add const dummy
scoreboard players set #-1 const -1
scoreboard players set #2 const 2
scoreboard players set #const_16 const 16

# Give required IDs to the votelights

scoreboard players set @e[tag=votelight1,type=marker] lightID 1
scoreboard players set @e[tag=votelight2,type=marker] lightID 2
scoreboard players set @e[tag=votelight3,type=marker] lightID 3
scoreboard players set @e[tag=votelight4,type=marker] lightID 4
scoreboard players set @e[tag=votelight5,type=marker] lightID 5
scoreboard players set @e[tag=votelight6,type=marker] lightID 6
scoreboard players set @e[tag=votelight7,type=marker] lightID 7
scoreboard players set @e[tag=votelight8,type=marker] lightID 8
scoreboard players set @e[tag=votelight9,type=marker] lightID 9
scoreboard players set @e[tag=votelight10,type=marker] lightID 10
scoreboard players set @e[tag=votelight11,type=marker] lightID 11
scoreboard players set @e[tag=votelight12,type=marker] lightID 12
scoreboard players set @e[tag=votelight13,type=marker] lightID 13
scoreboard players set @e[tag=votelight14,type=marker] lightID 14
scoreboard players set @e[tag=votelight15,type=marker] lightID 15
scoreboard players set @e[tag=votelight16,type=marker] lightID 16
