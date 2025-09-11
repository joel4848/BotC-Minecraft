execute unless score @p Player matches -11 run give @p minecraft:writable_book
scoreboard players set @p Player -11
scoreboard players set @p Alive 1
scoreboard players set @p Storyteller 0
team leave @p
team join Alive @p

scoreboard players set #picked_picker temp 11

function players:pickers/player_usernames/get_username


function setup:fm_colours_clear_all

