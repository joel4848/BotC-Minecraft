execute unless score @p Player matches -1 run give @p minecraft:writable_book
scoreboard players set @p Player -1
scoreboard players set @p Alive 1
scoreboard players set @p Storyteller 0
team leave @p
team join Alive @p

scoreboard players set #picked_picker temp 1

function players:usernames/update_username/player_1


function setup:fm_colours_clear_all

