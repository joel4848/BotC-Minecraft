execute if score @s Player matches -5 run playsound block.note_block.bass block @s ~ ~ ~ 1.0 0.75
execute if score @s Player matches -5 run tellraw @s {"color":"red","text":"You're already assigned to this seat!"}



advancement revoke @s only players:picker_5_interact



execute at @s unless score @s Player matches -5 run playsound minecraft:entity.experience_orb.pickup block @a ~ ~ ~ 1.0 1.0

scoreboard players set @s HasSeat 1

function players:assign/assign_p5
