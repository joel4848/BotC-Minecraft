#####################################
# Clocktower                        #
#####################################

# Occupied

execute as @e[type=marker,tag=discussion_room_entrance_clocktower] at @s run execute as @a[distance=..1] run scoreboard players set @s InClocktower 1
scoreboard players set #clocktower_occupied temp 0
execute unless score #clocktower_occupied temp matches 1 run execute as @a[scores={InClocktower=1}] run scoreboard players set #clocktower_occupied temp 1

execute if score #clocktower_occupied temp matches 1 run data modify storage minecraft:joelbotc clocktower_occupancy_status set value '{"color":"red","text":"OCCUPIED"},{"bold":true,"color":"gray","text":"\\\\nOccupants: "},{"selector":"@a[scores={InClocktower=1}]","separator":", "}'
execute if score #clocktower_occupied temp matches 0 run data modify storage minecraft:joelbotc clocktower_occupancy_status set value '{"color":"green","text":"FREE"}'

# Unoccupied

execute as @e[type=marker,tag=discussion_room_exit_clocktower] at @s run execute as @a[distance=..1] run scoreboard players set @s InClocktower 0

#####################################
# Nightclub                         #
#####################################

# Occupied

execute as @e[type=marker,tag=discussion_room_entrance_nightclub] at @s run execute as @a[distance=..1] run scoreboard players set @s InNightclub 1
scoreboard players set #nightclub_occupied temp 0
execute unless score #nightclub_occupied temp matches 1 run execute as @a[scores={InNightclub=1}] run scoreboard players set #nightclub_occupied temp 1

execute if score #nightclub_occupied temp matches 1 run data modify storage minecraft:joelbotc nightclub_occupancy_status set value '{"color":"red","text":"OCCUPIED"},{"bold":true,"color":"gray","text":"\\\\nOccupants: "},{"selector":"@a[scores={InNightclub=1}]","separator":", "}'
execute if score #nightclub_occupied temp matches 0 run data modify storage minecraft:joelbotc nightclub_occupancy_status set value '{"color":"green","text":"FREE"}'

# Unoccupied

execute as @e[type=marker,tag=discussion_room_exit_nightclub] at @s run execute as @a[distance=..1] run scoreboard players set @s InNightclub 0

#####################################
# Tavern                            #
#####################################

# Occupied

execute as @e[type=marker,tag=discussion_room_entrance_tavern] at @s run execute as @a[distance=..1] run scoreboard players set @s InTavern 1
scoreboard players set #tavern_occupied temp 0
execute unless score #tavern_occupied temp matches 1 run execute as @a[scores={InTavern=1}] run scoreboard players set #tavern_occupied temp 1

execute if score #tavern_occupied temp matches 1 run data modify storage minecraft:joelbotc tavern_occupancy_status set value '{"color":"red","text":"OCCUPIED"},{"bold":true,"color":"gray","text":"\\\\nOccupants: "},{"selector":"@a[scores={InTavern=1}]","separator":", "}'
execute if score #tavern_occupied temp matches 0 run data modify storage minecraft:joelbotc tavern_occupancy_status set value '{"color":"green","text":"FREE"}'

# Unoccupied

execute as @e[type=marker,tag=discussion_room_exit_tavern] at @s run execute as @a[distance=..1] run scoreboard players set @s InTavern 0

#####################################
# Blacksmith                        #
#####################################

# Occupied

execute as @e[type=marker,tag=discussion_room_entrance_blacksmith] at @s run execute as @a[distance=..1] run scoreboard players set @s InBlacksmith 1
scoreboard players set #blacksmith_occupied temp 0
execute unless score #blacksmith_occupied temp matches 1 run execute as @a[scores={InBlacksmith=1}] run scoreboard players set #blacksmith_occupied temp 1

execute if score #blacksmith_occupied temp matches 1 run data modify storage minecraft:joelbotc blacksmith_occupancy_status set value '{"color":"red","text":"OCCUPIED"},{"bold":true,"color":"gray","text":"\\\\nOccupants: "},{"selector":"@a[scores={InBlacksmith=1}]","separator":", "}'
execute if score #blacksmith_occupied temp matches 0 run data modify storage minecraft:joelbotc blacksmith_occupancy_status set value '{"color":"green","text":"FREE"}'

# Unoccupied

execute as @e[type=marker,tag=discussion_room_exit_blacksmith] at @s run execute as @a[distance=..1] run scoreboard players set @s InBlacksmith 0

#####################################
# Library                           #
#####################################

# Occupied

execute as @e[type=marker,tag=discussion_room_entrance_library] at @s run execute as @a[distance=..1] run scoreboard players set @s InLibrary 1
scoreboard players set #library_occupied temp 0
execute unless score #library_occupied temp matches 1 run execute as @a[scores={InLibrary=1}] run scoreboard players set #library_occupied temp 1

execute if score #library_occupied temp matches 1 run data modify storage minecraft:joelbotc library_occupancy_status set value '{"color":"red","text":"OCCUPIED"},{"bold":true,"color":"gray","text":"\\\\nOccupants: "},{"selector":"@a[scores={InLibrary=1}]","separator":", "}'
execute if score #library_occupied temp matches 0 run data modify storage minecraft:joelbotc library_occupancy_status set value '{"color":"green","text":"FREE"}'

# Unoccupied

execute as @e[type=marker,tag=discussion_room_exit_library] at @s run execute as @a[distance=..1] run scoreboard players set @s InLibrary 0

#####################################
# Pumpkin                           #
#####################################

# Occupied

execute as @e[type=marker,tag=discussion_room_entrance_pumpkin] at @s run execute as @a[distance=..1] run scoreboard players set @s InPumpkin 1
scoreboard players set #pumpkin_occupied temp 0
execute unless score #pumpkin_occupied temp matches 1 run execute as @a[scores={InPumpkin=1}] run scoreboard players set #pumpkin_occupied temp 1

execute if score #pumpkin_occupied temp matches 1 run data modify storage minecraft:joelbotc pumpkin_occupancy_status set value '{"color":"red","text":"OCCUPIED"},{"bold":true,"color":"gray","text":"\\\\nOccupants: "},{"selector":"@a[scores={InPumpkin=1}]","separator":", "}'
execute if score #pumpkin_occupied temp matches 0 run data modify storage minecraft:joelbotc pumpkin_occupancy_status set value '{"color":"green","text":"FREE"}'

# Unoccupied

execute as @e[type=marker,tag=discussion_room_exit_pumpkin] at @s run execute as @a[distance=..1] run scoreboard players set @s InPumpkin 0

#####################################
# Cemetary                          #
#####################################

# Trigger/stop ghost swing animation

# Trigger

execute as @e[type=marker,tag=discussion_room_entrance_cemetary] at @s run execute as @a[distance=..1] run scoreboard players set @s InCemetary 1
scoreboard players set #cemetary_occupied temp 0
execute unless score #cemetary_occupied temp matches 1 run execute as @a[scores={InCemetary=1}] run scoreboard players set #cemetary_occupied temp 1
execute unless score #ghost_loop_running temp matches 1 run execute if score #cemetary_occupied temp matches 1 run tag @e[type=block_display,tag=ghost_swing_root] remove animation_pause
execute unless score #ghost_loop_running temp matches 1 run execute if score #cemetary_occupied temp matches 1 run schedule function ghost_swing:k/default/keyframe_0 5t
execute unless score #ghost_loop_running temp matches 1 run execute if score #cemetary_occupied temp matches 1 run scoreboard players set #ghost_loop_running temp 1

execute if score #cemetary_occupied temp matches 1 run data modify storage minecraft:joelbotc cemetary_occupancy_status set value '{"color":"red","text":"OCCUPIED"},{"bold":true,"color":"gray","text":"\\\\nOccupants: "},{"selector":"@a[scores={InCemetary=1}]","separator":", "}'
execute if score #cemetary_occupied temp matches 0 run data modify storage minecraft:joelbotc cemetary_occupancy_status set value '{"color":"green","text":"FREE"}'

# Stop

execute as @e[type=marker,tag=discussion_room_exit_cemetary] at @s run execute as @a[distance=..1] run scoreboard players set @s InCemetary 0
scoreboard players set #cemetary_occupied temp 0
execute unless score #cemetary_occupied temp matches 1 run execute as @a[scores={InCemetary=1}] run scoreboard players set #cemetary_occupied temp 1
execute if score #cemetary_occupied temp matches 0 run tag @e[type=block_display,tag=ghost_swing_root] add animation_pause
execute if score #cemetary_occupied temp matches 0 run scoreboard players set #ghost_loop_running temp 0

#####################################
# Crematorium                       #
#####################################

# Trigger/stop crematorium crusher/conveyor animations

# Trigger

execute as @e[type=marker,tag=discussion_room_entrance_crematorium] at @s run execute as @a[distance=..1] run scoreboard players set @s InCrematorium 1
scoreboard players set #crematorium_occupied temp 0
execute unless score #crematorium_occupied temp matches 1 run execute as @a[scores={InCrematorium=1}] run scoreboard players set #crematorium_occupied temp 1
execute unless score #crematorium_running temp matches 1 run execute if score #crematorium_occupied temp matches 1 run function buildings:crematorium/start

execute if score #crematorium_occupied temp matches 1 run data modify storage minecraft:joelbotc crematorium_occupancy_status set value '{"color":"red","text":"OCCUPIED"},{"bold":true,"color":"gray","text":"\\\\nOccupants: "},{"selector":"@a[scores={InCrematorium=1}]","separator":", "}'
execute if score #crematorium_occupied temp matches 0 run data modify storage minecraft:joelbotc crematorium_occupancy_status set value '{"color":"green","text":"FREE"}'

# Stop

execute as @e[type=marker,tag=discussion_room_exit_crematorium] at @s run execute as @a[distance=..1] run scoreboard players set @s InCrematorium 0
scoreboard players set #crematorium_occupied temp 0
execute unless score #crematorium_occupied temp matches 1 run execute as @a[scores={InCrematorium=1}] run scoreboard players set #crematorium_occupied temp 1
execute if score #crematorium_running temp matches 1 run execute if score #crematorium_occupied temp matches 0 run function buildings:crematorium/stop
