# called with nomination:set_nominator {player:%d}

function voting:reset_vote
scoreboard objectives remove Nominator
scoreboard objectives add Nominator dummy
$scoreboard players set @a[scores={Player=-$(player)}] Nominator 1