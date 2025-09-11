execute unless score @p Player matches -10 run give @p minecraft:writable_book
scoreboard players set @p Player -10
scoreboard players set @p Alive 1
scoreboard players set @p Storyteller 0
team leave @p
team join Alive @p

scoreboard players set #picked_picker temp 10

function players:pickers/player_usernames/get_username
