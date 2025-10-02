# call with extras:thief {player:%d}

scoreboard players set @a ThiefSelected 0
$scoreboard players set @a[scores={Player=-$(player)}] ThiefSelected 1