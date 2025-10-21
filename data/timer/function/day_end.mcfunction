# Disable OG mode if enabled

execute if score #og_enabled temp matches 1 run kill @e[tag=questionmark]

execute if score #og_enabled temp matches 1 run function extras:organ_grinder/og_disable

# Announce day end

title @a times 20t 60t 20t

time set 18000
gamerule doDaylightCycle false
function timer:discussion_end_bell
schedule function timer:discussion_end_bell 10t append
schedule function timer:discussion_end_bell 60t append
schedule function timer:discussion_end_bell 70t append
title @a title {"text":"Go to bed!","bold":true,"color":"blue"}
title @a subtitle [{"text":"Night falls in ","color":"blue"},{"nbt":"front_text.messages[2]","block":"168 107 29","interpret":true,"color":"blue","italic":true},{"text":"...","color":"blue"}]
scoreboard players set TimerEntity TimerPaused 1
function timer:hide_bossbar

# Make nametags invisible

team modify Alive nametagVisibility never
team modify Dead nametagVisibility never
team modify Storyteller nametagVisibility never

# Do full reset of vote system

function voting:reset_vote_full

# Reenable tp

scoreboard players set #tp_disabled temp 0

# Remove hands

function clock_hand:remove_hands

# Remove pickers if still present

function setup:remove_buttons

# Set score for "It is nighttime" action bar announcement

scoreboard players set #is_nighttime temp 1

# Remove ST glowing effect (regardless of whether option enabled in Setup)

effect clear @a[scores={Storyteller=1}] glowing

# Give compasses if not already given, then mark as given

execute unless score #compasses_given temp matches 1 run function buildings:call_give_compass

execute unless score #compasses_given temp matches 1 run scoreboard players set #compasses_given temp 1

# Reset InHouse scoreboard and start particles function

scoreboard objectives remove InHouse
scoreboard objectives remove InHouseShown
scoreboard objectives add InHouse dummy
scoreboard objectives add InHouseShown dummy "In House"

scoreboard players add @a[scores={Player=..0}] InHouse 0

scoreboard players set @a[scores={Player=-1}] InHouseShown -1
scoreboard players set @a[scores={Player=-2}] InHouseShown -2
scoreboard players set @a[scores={Player=-3}] InHouseShown -3
scoreboard players set @a[scores={Player=-4}] InHouseShown -4
scoreboard players set @a[scores={Player=-5}] InHouseShown -5
scoreboard players set @a[scores={Player=-6}] InHouseShown -6
scoreboard players set @a[scores={Player=-7}] InHouseShown -7
scoreboard players set @a[scores={Player=-8}] InHouseShown -8
scoreboard players set @a[scores={Player=-9}] InHouseShown -9
scoreboard players set @a[scores={Player=-10}] InHouseShown -10
scoreboard players set @a[scores={Player=-11}] InHouseShown -11
scoreboard players set @a[scores={Player=-12}] InHouseShown -12
scoreboard players set @a[scores={Player=-13}] InHouseShown -13
scoreboard players set @a[scores={Player=-14}] InHouseShown -14
scoreboard players set @a[scores={Player=-15}] InHouseShown -15
scoreboard players set @a[scores={Player=-16}] InHouseShown -16

scoreboard players set #all_in_houses temp 0
scoreboard players set #in_house_sb_removed temp 0

function buildings:entrance_particles

# Make Psychopath killing unallowed and remove all axes

data remove storage extras:immersive_pvp allowed
execute as @a run function extras:psychopath/axe/remove
execute as @a run function extras:slayer/remove_crossbow

# Make sure PVP is turned off

execute if score #immersive_pvp temp matches 1 if score #pvp_enabled temp matches 0 run gamerule pvp false
effect clear @a resistance