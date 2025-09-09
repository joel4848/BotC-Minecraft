
function players:assign/auto_assign

advancement revoke @s only players:picker_auto_interact



execute at @s unless score @s HasSeat matches 1 run playsound minecraft:entity.experience_orb.pickup block @a ~ ~ ~ 1.0 1.0

execute at @s if score @s HasSeat matches 1 run playsound block.note_block.bass block @s ~ ~ ~ 1.0 0.75

execute if score @s HasSeat matches 1 run tellraw @s {"color":"red","text":"You already have a seat! Left-click to leave your seat."}


scoreboard players set @s HasSeat 1