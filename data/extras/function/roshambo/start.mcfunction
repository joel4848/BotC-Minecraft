# Reset scoreboards

scoreboard players set @a RoshamboLocked 0
scoreboard players set @a ConfirmRoshamboLock 0
scoreboard players set @a Roshambo 0

# Place glass boxes

fill 148 98 -2 151 102 4 light_blue_stained_glass replace
fill 149 99 -1 150 101 3 air replace

fill 186 98 4 183 102 -2 red_stained_glass replace
fill 185 99 3 184 101 -1 air replace

# Place signs

schedule function extras:roshambo/place_signs 1t

# Start tick function

scoreboard players set #running Roshambo 1
schedule function extras:roshambo/tick_change_signs 2t

# tp players

tp @a[scores={Nominator=1}] 149 99 1 facing entity @e[limit=1,sort=nearest,tag=mapcentre,type=marker]
tp @a[scores={Marked=1}] 185 99 1 facing entity @e[limit=1,sort=nearest,tag=mapcentre,type=marker]