scoreboard objectives remove Alive
scoreboard objectives add Alive dummy
scoreboard objectives remove Player
scoreboard objectives add Player dummy "Players"
scoreboard objectives setdisplay sidebar Player
team leave @a[team=!Storyteller]
scoreboard objectives remove HasSeat
scoreboard objectives add HasSeat dummy

# Clone chests

function setup:clonechests

# Place blank large canvases on empty easels

execute as @e[type=xercapaint:easel,tag=house_easel] run data modify entity @e[type=xercapaint:easel,limit=1,sort=nearest] Item.id set value "xercapaint:item_canvas_large"

# Revive everyone

function players:kill_revive/revive_all

# Make nametags visible

team modify Alive nametagVisibility always
team modify Dead nametagVisibility always
team modify Storyteller nametagVisibility always

# Reset vote lights & seat buttons

function setup:remove_buttons
function setup:place_buttons
function voting:reset_vote_full
schedule function setup:replace_votelights 5t replace

function voting:remove_votelight_interactions_all
function voting:summon_votelight_interactions

# Clear GhostVoteUsed scoreboards

scoreboard objectives remove GhostVoteUsedMaster
scoreboard objectives add GhostVoteUsedMaster dummy

scoreboard objectives remove GhostVoteUsedToday
scoreboard objectives add GhostVoteUsedToday dummy

scoreboard objectives remove GhostVoteUnusedToday
scoreboard objectives add GhostVoteUnusedToday dummy

# Clear NBT storage for the username extraction/storing system

function setup:clear_username_storage

function players:usernames/extract_username/clear_signs

# Empty FM player list

# function players:pickers/player_usernames/set_fmvs with storage minecraft:joelbotc

# scoreboard players operation #were_fm_colours_on temp = #fm_colours_on temp

# scoreboard players set #fm_colours_on temp 1

# function setup:fm_colours_clear_all

# scoreboard players operation #fm_colours_on temp = #were_fm_colours_on temp

execute as @s run execute if score player_count PlayerCount matches 5.. run fmvariable set player_1_colour false %#FFFFFF%
execute as @s run execute if score player_count PlayerCount matches 5.. run fmvariable set player_2_colour false %#FFFFFF%
execute as @s run execute if score player_count PlayerCount matches 5.. run fmvariable set player_3_colour false %#FFFFFF%
execute as @s run execute if score player_count PlayerCount matches 5.. run fmvariable set player_4_colour false %#FFFFFF%
execute as @s run execute if score player_count PlayerCount matches 5.. run fmvariable set player_5_colour false %#FFFFFF%
execute as @s run execute if score player_count PlayerCount matches 6.. run fmvariable set player_6_colour false %#FFFFFF%
execute as @s run execute if score player_count PlayerCount matches 7.. run fmvariable set player_7_colour false %#FFFFFF%
execute as @s run execute if score player_count PlayerCount matches 8.. run fmvariable set player_8_colour false %#FFFFFF%
execute as @s run execute if score player_count PlayerCount matches 9.. run fmvariable set player_9_colour false %#FFFFFF%
execute as @s run execute if score player_count PlayerCount matches 10.. run fmvariable set player_10_colour false %#FFFFFF%
execute as @s run execute if score player_count PlayerCount matches 11.. run fmvariable set player_11_colour false %#FFFFFF%
execute as @s run execute if score player_count PlayerCount matches 12.. run fmvariable set player_12_colour false %#FFFFFF%
execute as @s run execute if score player_count PlayerCount matches 13.. run fmvariable set player_13_colour false %#FFFFFF%
execute as @s run execute if score player_count PlayerCount matches 14.. run fmvariable set player_14_colour false %#FFFFFF%
execute as @s run execute if score player_count PlayerCount matches 15.. run fmvariable set player_15_colour false %#FFFFFF%
execute as @s run execute if score player_count PlayerCount matches 16.. run fmvariable set player_16_colour false %#FFFFFF%


execute as @s run execute if score player_count PlayerCount matches ..5 run fmvariable set player_6_colour false %#555555%
execute as @s run execute if score player_count PlayerCount matches ..6 run fmvariable set player_7_colour false %#555555%
execute as @s run execute if score player_count PlayerCount matches ..7 run fmvariable set player_8_colour false %#555555%
execute as @s run execute if score player_count PlayerCount matches ..8 run fmvariable set player_9_colour false %#555555%
execute as @s run execute if score player_count PlayerCount matches ..9 run fmvariable set player_10_colour false %#555555%
execute as @s run execute if score player_count PlayerCount matches ..10 run fmvariable set player_11_colour false %#555555%
execute as @s run execute if score player_count PlayerCount matches ..11 run fmvariable set player_12_colour false %#555555%
execute as @s run execute if score player_count PlayerCount matches ..12 run fmvariable set player_13_colour false %#555555%
execute as @s run execute if score player_count PlayerCount matches ..13 run fmvariable set player_14_colour false %#555555%
execute as @s run execute if score player_count PlayerCount matches ..14 run fmvariable set player_15_colour false %#555555%
execute as @s run execute if score player_count PlayerCount matches ..15 run fmvariable set player_16_colour false %#555555%