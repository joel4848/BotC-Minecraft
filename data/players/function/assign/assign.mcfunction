# call with players:assign/assign {player:%d}

$execute unless score @p Player matches -$(player) run give @p writable_book
$execute at @a[scores={Player=-$(player)}] run function players:assign/unassign
$scoreboard players set @p Player -$(player)
scoreboard players set @p Alive 1
scoreboard players set @p Storyteller 0
team leave @p
team join Alive @p

$scoreboard players set #picked_picker temp $(player)
$function players:usernames/update_username/player {player:$(player)}
function setup:fm_colours_clear_all