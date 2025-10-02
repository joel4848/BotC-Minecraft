# call with players:assign/assign {player:%d}

say "running assign"
$say "assigning -$(player)"

$execute unless score @p Player matches -$(player) run give @p writable_book
$scoreboard players set @p Player -$(player)
scoreboard players set @p Alive 1
scoreboard players set @p Storyteller 0
team leave @p
team join Alive @p

$scoreboard players set #picked_picker temp $(player)
$function players:usernames/update_username/player {player:$(player)}
function setup:fm_colours_clear_all