
function voting:reset_vote
scoreboard objectives remove Nominator
scoreboard objectives add Nominator dummy

scoreboard players set @a[scores={Player=-3}] Nominator 1

