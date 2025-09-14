# Apply seat 1 assignment to the executing player
scoreboard players set @s Player -1
scoreboard players set @s Alive 1
scoreboard players set @s Storyteller 0
team leave @s
team join Alive @s

scoreboard players set #picked_picker temp 1

function players:pickers/player_usernames/get_username

function setup:fm_colours_clear_all