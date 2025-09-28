
function voting:reset_vote
scoreboard objectives remove Nominator
scoreboard objectives add Nominator dummy

scoreboard players set @a[scores={Player=-4}] Nominator 1

