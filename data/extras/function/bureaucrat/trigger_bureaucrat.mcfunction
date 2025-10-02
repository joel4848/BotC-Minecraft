# call with extras:bureaucrat {player:%d}

scoreboard players set @a BureaucratSelected 0
$scoreboard players set @a[scores={Player=-$(player)}] BureaucratSelected 1