scoreboard players set #6 PlayerCount 6
scoreboard players set #17 PlayerCount 17
scoreboard players operation player_count_plus_1 PlayerCount = player_count PlayerCount
scoreboard players add player_count_plus_1 PlayerCount 1
execute if score player_count_plus_1 PlayerCount < #6 PlayerCount run scoreboard players set player_count_plus_1 PlayerCount 6
execute if score player_count_plus_1 PlayerCount >= #17 PlayerCount run scoreboard players set player_count_plus_1 PlayerCount 17
execute store result storage joelbotc player_count int 1 run scoreboard players get player_count PlayerCount
execute store result storage joelbotc player_count_plus_1 int 1 run scoreboard players get player_count_plus_1 PlayerCount

function setup:player_count/replace_wanted_votelights with storage joelbotc
function setup:player_count/remove_unwanted_votelights with storage joelbotc
schedule function voting:reset_vote 10t

function setup:number_list_empty_seats


execute as @s unless entity @a[scores={Player=-1}] run fmvariable set player_1_colour false %#FFFFFF%
execute as @s unless entity @a[scores={Player=-2}] run fmvariable set player_2_colour false %#FFFFFF%
execute as @s unless entity @a[scores={Player=-3}] run fmvariable set player_3_colour false %#FFFFFF%
execute as @s unless entity @a[scores={Player=-4}] run fmvariable set player_4_colour false %#FFFFFF%
execute as @s unless entity @a[scores={Player=-5}] run fmvariable set player_5_colour false %#FFFFFF%
execute as @s unless entity @a[scores={Player=-6}] run fmvariable set player_6_colour false %#FFFFFF%
execute as @s unless entity @a[scores={Player=-7}] run fmvariable set player_7_colour false %#FFFFFF%
execute as @s unless entity @a[scores={Player=-8}] run fmvariable set player_8_colour false %#FFFFFF%
execute as @s unless entity @a[scores={Player=-9}] run fmvariable set player_9_colour false %#FFFFFF%
execute as @s unless entity @a[scores={Player=-10}] run fmvariable set player_10_colour false %#FFFFFF%
execute as @s unless entity @a[scores={Player=-11}] run fmvariable set player_11_colour false %#FFFFFF%
execute as @s unless entity @a[scores={Player=-12}] run fmvariable set player_12_colour false %#FFFFFF%
execute as @s unless entity @a[scores={Player=-13}] run fmvariable set player_13_colour false %#FFFFFF%
execute as @s unless entity @a[scores={Player=-14}] run fmvariable set player_14_colour false %#FFFFFF%
execute as @s unless entity @a[scores={Player=-15}] run fmvariable set player_15_colour false %#FFFFFF%
execute as @s unless entity @a[scores={Player=-16}] run fmvariable set player_16_colour false %#FFFFFF%


function players:fm_colours/fmv_colours_set

