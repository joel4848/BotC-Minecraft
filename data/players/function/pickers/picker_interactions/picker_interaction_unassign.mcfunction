
function players:assign/unassign

advancement revoke @s only players:picker_punch_unassign



execute at @e[tag=picker_interaction,limit=1,sort=nearest] unless score @s HasSeat matches 0 run playsound minecraft:block.lever.click block @a ~ ~ ~ 1.0 1.0

scoreboard players set @s HasSeat 0