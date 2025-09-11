execute unless score @p Player matches -8 run give @p minecraft:writable_book
scoreboard players set @p Player -8
scoreboard players set @p Alive 1
scoreboard players set @p Storyteller 0
team leave @p
team join Alive @p

scoreboard players set #picked_picker temp 8

function players:pickers/player_usernames/get_username
