# call with players:assign/assign {player:%d}

$execute unless score @s Player matches -$(player) run give @s writable_book
$execute at @a[scores={Player=-$(player)}] run function players:assign/unassign
$scoreboard players set @s Player -$(player)
scoreboard players set @s Alive 1
scoreboard players set @s Storyteller 0
team leave @s
team join Alive @s

$scoreboard players set #picked_picker temp $(player)
$function players:usernames/update_username/player {player:$(player)}
function setup:fm_colours_clear_all