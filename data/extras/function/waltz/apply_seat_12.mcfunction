# Apply seat 12 assignment to the executing player
scoreboard players set @s Player -12
# scoreboard players set @s Alive 1
# scoreboard players set @s Storyteller 0
# team leave @s
# team join Alive @s

scoreboard players set #picked_picker temp 12

function players:pickers/player_usernames/get_username

function setup:fm_colours_clear_all