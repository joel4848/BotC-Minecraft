
#####################################
# Discussion Rooms                  #
#####################################

# Discussion room join

execute as @e[type=marker,tag=discussion_room_entrance_cemetary] at @s run execute as @a[distance=..1] run voicechat join "Cemetary"
execute as @e[type=marker,tag=discussion_room_entrance_crematorium] at @s run execute as @a[distance=..1] run voicechat join "Crematorium"
execute as @e[type=marker,tag=discussion_room_entrance_clocktower] at @s run execute as @a[distance=..1] run voicechat join "Clocktower"
execute as @e[type=marker,tag=discussion_room_entrance_nightclub] at @s run execute as @a[distance=..1] run voicechat join "Nightclub"
execute as @e[type=marker,tag=discussion_room_entrance_tavern] at @s run execute as @a[distance=..1] run voicechat join "Tavern"
execute as @e[type=marker,tag=discussion_room_entrance_blacksmith] at @s run execute as @a[distance=..1] run voicechat join "Blacksmith"
execute as @e[type=marker,tag=discussion_room_entrance_library] at @s run execute as @a[distance=..1] run voicechat join "Library"

# Discussion room leave

execute as @e[type=marker,tag=discussion_room_exit_cemetary] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=discussion_room_exit_crematorium] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=discussion_room_exit_clocktower] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=discussion_room_exit_nightclub] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=discussion_room_exit_tavern] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=discussion_room_exit_blacksmith] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=discussion_room_exit_library] at @s run execute as @a[distance=..1] run voicechat leave

# Trigger/stop ghost swing animation

# Trigger

execute as @e[type=marker,tag=discussion_room_entrance_cemetary] at @s run execute as @a[distance=..1] run scoreboard players set @s InCemetary 1
scoreboard players set #cemetary_occupied temp 0
execute unless score #cemetary_occupied temp matches 1 run execute as @a[scores={InCemetary=1}] run scoreboard players set #cemetary_occupied temp 1
execute unless score #ghost_loop_running temp matches 1 run execute if score #cemetary_occupied temp matches 1 run tag @e[type=block_display,tag=ghost_swing_root] remove animation_pause
execute unless score #ghost_loop_running temp matches 1 run execute if score #cemetary_occupied temp matches 1 run schedule function ghost_swing:k/default/keyframe_0 5t
execute unless score #ghost_loop_running temp matches 1 run execute if score #cemetary_occupied temp matches 1 run scoreboard players set #ghost_loop_running temp 1

# Stop

execute as @e[type=marker,tag=discussion_room_exit_cemetary] at @s run execute as @a[distance=..1] run scoreboard players set @s InCemetary 0
scoreboard players set #cemetary_occupied temp 0
execute unless score #cemetary_occupied temp matches 1 run execute as @a[scores={InCemetary=1}] run scoreboard players set #cemetary_occupied temp 1
execute if score #cemetary_occupied temp matches 0 run tag @e[type=block_display,tag=ghost_swing_root] add animation_pause
execute if score #cemetary_occupied temp matches 0 run scoreboard players set #ghost_loop_running temp 0

#####################################
# Town Square                       #
#####################################

# Town square (large cube around town square adding everyone inside - four walls and a ceiling removing people

execute as @a[x=151,y=93,z=-15,dx=32,dy=11,dz=32] run voicechat join "~ Town Square"
execute as @a[x=184,y=107,z=-16,dx=-34,dy=0,dz=34,] run voicechat leave
execute as @a[x=184,y=104,z=-16,dx=0,dy=-11,dz=34,] run voicechat leave
execute as @a[x=150,y=93,z=-16,dx=34,dy=11,dz=0,] run voicechat leave
execute as @a[x=150,y=104,z=18,dx=0,dy=-11,dz=-34,] run voicechat leave
execute as @a[x=184,y=93,z=18,dx=-34,dy=11,dz=0] run voicechat leave

#####################################
# Houses                            #
#####################################

# House join

execute as @e[type=marker,tag=house1] at @s run execute as @a[distance=..1] run voicechat join "~ House 01"
execute as @e[type=marker,tag=house2] at @s run execute as @a[distance=..1] run voicechat join "~ House 02"
execute as @e[type=marker,tag=house3] at @s run execute as @a[distance=..1] run voicechat join "~ House 03"
execute as @e[type=marker,tag=house4] at @s run execute as @a[distance=..1] run voicechat join "~ House 04"
execute as @e[type=marker,tag=house5] at @s run execute as @a[distance=..1] run voicechat join "~ House 05"
execute as @e[type=marker,tag=house6] at @s run execute as @a[distance=..1.5] run voicechat join "~ House 06"
execute as @e[type=marker,tag=house7] at @s run execute as @a[distance=..1.5] run voicechat join "~ House 07"
execute as @e[type=marker,tag=house8] at @s run execute as @a[distance=..1.5] run voicechat join "~ House 08"
execute as @e[type=marker,tag=house9] at @s run execute as @a[distance=..1.5] run voicechat join "~ House 09"
execute as @e[type=marker,tag=house10] at @s run execute as @a[distance=..1] run voicechat join "~ House 10"
execute as @e[type=marker,tag=house11] at @s run execute as @a[distance=..1] run voicechat join "~ House 11"
execute as @e[type=marker,tag=house12] at @s run execute as @a[distance=..1] run voicechat join "~ House 12"
execute as @e[type=marker,tag=house13] at @s run execute as @a[distance=..1] run voicechat join "~ House 13"
execute as @e[type=marker,tag=house14] at @s run execute as @a[distance=..1] run voicechat join "~ House 14"
execute as @e[type=marker,tag=house15] at @s run execute as @a[distance=..1] run voicechat join "~ House 15"
execute as @e[type=marker,tag=house16] at @s run execute as @a[distance=..1] run voicechat join "~ House 16"

execute unless score @a[scores={Player=-1},limit=1,sort=nearest] InHouse matches 1 run execute as @e[type=marker,tag=house1] at @s run execute as @a[scores={Player=-1},distance=..1] run scoreboard players set @s InHouse 1
execute unless score @a[scores={Player=-2},limit=1,sort=nearest] InHouse matches 1 run execute as @e[type=marker,tag=house2] at @s run execute as @a[scores={Player=-2},distance=..1] run scoreboard players set @s InHouse 1
execute unless score @a[scores={Player=-3},limit=1,sort=nearest] InHouse matches 1 run execute as @e[type=marker,tag=house3] at @s run execute as @a[scores={Player=-3},distance=..1] run scoreboard players set @s InHouse 1
execute unless score @a[scores={Player=-4},limit=1,sort=nearest] InHouse matches 1 run execute as @e[type=marker,tag=house4] at @s run execute as @a[scores={Player=-4},distance=..1] run scoreboard players set @s InHouse 1
execute unless score @a[scores={Player=-5},limit=1,sort=nearest] InHouse matches 1 run execute as @e[type=marker,tag=house5] at @s run execute as @a[scores={Player=-5},distance=..1] run scoreboard players set @s InHouse 1
execute unless score @a[scores={Player=-6},limit=1,sort=nearest] InHouse matches 1 run execute as @e[type=marker,tag=house6] at @s run execute as @a[scores={Player=-6},distance=..1] run scoreboard players set @s InHouse 1
execute unless score @a[scores={Player=-7},limit=1,sort=nearest] InHouse matches 1 run execute as @e[type=marker,tag=house7] at @s run execute as @a[scores={Player=-7},distance=..1] run scoreboard players set @s InHouse 1
execute unless score @a[scores={Player=-8},limit=1,sort=nearest] InHouse matches 1 run execute as @e[type=marker,tag=house8] at @s run execute as @a[scores={Player=-8},distance=..1] run scoreboard players set @s InHouse 1
execute unless score @a[scores={Player=-9},limit=1,sort=nearest] InHouse matches 1 run execute as @e[type=marker,tag=house9] at @s run execute as @a[scores={Player=-9},distance=..1] run scoreboard players set @s InHouse 1
execute unless score @a[scores={Player=-10},limit=1,sort=nearest] InHouse matches 1 run execute as @e[type=marker,tag=house10] at @s run execute as @a[scores={Player=-10},distance=..1] run scoreboard players set @s InHouse 1
execute unless score @a[scores={Player=-11},limit=1,sort=nearest] InHouse matches 1 run execute as @e[type=marker,tag=house11] at @s run execute as @a[scores={Player=-11},distance=..1] run scoreboard players set @s InHouse 1
execute unless score @a[scores={Player=-12},limit=1,sort=nearest] InHouse matches 1 run execute as @e[type=marker,tag=house12] at @s run execute as @a[scores={Player=-12},distance=..1] run scoreboard players set @s InHouse 1
execute unless score @a[scores={Player=-13},limit=1,sort=nearest] InHouse matches 1 run execute as @e[type=marker,tag=house13] at @s run execute as @a[scores={Player=-13},distance=..1] run scoreboard players set @s InHouse 1
execute unless score @a[scores={Player=-14},limit=1,sort=nearest] InHouse matches 1 run execute as @e[type=marker,tag=house14] at @s run execute as @a[scores={Player=-14},distance=..1] run scoreboard players set @s InHouse 1
execute unless score @a[scores={Player=-15},limit=1,sort=nearest] InHouse matches 1 run execute as @e[type=marker,tag=house15] at @s run execute as @a[scores={Player=-15},distance=..1] run scoreboard players set @s InHouse 1
execute unless score @a[scores={Player=-16},limit=1,sort=nearest] InHouse matches 1 run execute as @e[type=marker,tag=house16] at @s run execute as @a[scores={Player=-16},distance=..1] run scoreboard players set @s InHouse 1

# Show 'InHouse' scoreboard to ST and display ✔ or ✘ depending on whether player is in their house or not

execute unless score #is_nighttime temp matches 0 run execute as @a[scores={Player=..0,InHouse=0}] run scoreboard objectives setdisplay sidebar.team.blue InHouse
execute unless score #is_nighttime temp matches 0 run execute as @a[scores={Player=..0,InHouse=0}] run scoreboard players set #in_house_sb_removed temp 0
execute unless score #is_nighttime temp matches 0 run execute as @a[scores={Player=..0,InHouse=0}] run scoreboard players set #all_in_houses temp 0

scoreboard players display numberformat @a[scores={InHouse=0}] InHouse fixed {"text":"✘","color":"dark_red"}
scoreboard players display numberformat @a[scores={InHouse=1}] InHouse fixed {"text":"✔","color":"green"}

execute unless entity @a[scores={Player=..0,InHouse=0}] unless score #all_in_houses temp matches 1 run scoreboard players set #all_in_houses temp 1 

execute if score #all_in_houses temp matches 1 unless score #in_house_sb_removed temp matches 1 run function buildings:all_in_houses

# House leave

execute as @e[type=marker,tag=house_exit1] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=house_exit2] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=house_exit3] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=house_exit4] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=house_exit5] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=house_exit6] at @s run execute as @a[distance=..1.5] run voicechat leave
execute as @e[type=marker,tag=house_exit7] at @s run execute as @a[distance=..1.5] run voicechat leave
execute as @e[type=marker,tag=house_exit8] at @s run execute as @a[distance=..1.5] run voicechat leave
execute as @e[type=marker,tag=house_exit9] at @s run execute as @a[distance=..1.5] run voicechat leave
execute as @e[type=marker,tag=house_exit10] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=house_exit11] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=house_exit12] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=house_exit13] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=house_exit14] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=house_exit15] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=house_exit16] at @s run execute as @a[distance=..1] run voicechat leave

execute as @e[type=marker,tag=house_exit1] at @s run execute as @a[scores={Player=-1},distance=..1] run scoreboard players set @s InHouse 0
execute as @e[type=marker,tag=house_exit2] at @s run execute as @a[scores={Player=-2},distance=..1] run scoreboard players set @s InHouse 0
execute as @e[type=marker,tag=house_exit3] at @s run execute as @a[scores={Player=-3},distance=..1] run scoreboard players set @s InHouse 0
execute as @e[type=marker,tag=house_exit4] at @s run execute as @a[scores={Player=-4},distance=..1] run scoreboard players set @s InHouse 0
execute as @e[type=marker,tag=house_exit5] at @s run execute as @a[scores={Player=-5},distance=..1] run scoreboard players set @s InHouse 0
execute as @e[type=marker,tag=house_exit6] at @s run execute as @a[scores={Player=-6},distance=..1] run scoreboard players set @s InHouse 0
execute as @e[type=marker,tag=house_exit7] at @s run execute as @a[scores={Player=-7},distance=..1] run scoreboard players set @s InHouse 0
execute as @e[type=marker,tag=house_exit8] at @s run execute as @a[scores={Player=-8},distance=..1] run scoreboard players set @s InHouse 0
execute as @e[type=marker,tag=house_exit9] at @s run execute as @a[scores={Player=-9},distance=..1] run scoreboard players set @s InHouse 0
execute as @e[type=marker,tag=house_exit10] at @s run execute as @a[scores={Player=-10},distance=..1] run scoreboard players set @s InHouse 0
execute as @e[type=marker,tag=house_exit11] at @s run execute as @a[scores={Player=-11},distance=..1] run scoreboard players set @s InHouse 0
execute as @e[type=marker,tag=house_exit12] at @s run execute as @a[scores={Player=-12},distance=..1] run scoreboard players set @s InHouse 0
execute as @e[type=marker,tag=house_exit13] at @s run execute as @a[scores={Player=-13},distance=..1] run scoreboard players set @s InHouse 0
execute as @e[type=marker,tag=house_exit14] at @s run execute as @a[scores={Player=-14},distance=..1] run scoreboard players set @s InHouse 0
execute as @e[type=marker,tag=house_exit15] at @s run execute as @a[scores={Player=-15},distance=..1] run scoreboard players set @s InHouse 0
execute as @e[type=marker,tag=house_exit16] at @s run execute as @a[scores={Player=-16},distance=..1] run scoreboard players set @s InHouse 0


