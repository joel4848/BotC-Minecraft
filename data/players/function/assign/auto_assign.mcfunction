# Assign lowest available seat

# Create temporary scoreboard if it doesn't exist
scoreboard objectives add temp_assigned dummy

# Reset assignment status for executing player
scoreboard players set @s temp_assigned 0

# Check seats in order from 1 to 16
execute if score @s temp_assigned matches 0 unless entity @a[scores={Player=-1}] run function players:assign/assign_p1
execute if score @s Player matches -1 run scoreboard players set @s temp_assigned 1

execute if score @s temp_assigned matches 0 unless entity @a[scores={Player=-2}] run function players:assign/assign_p2
execute if score @s Player matches -2 run scoreboard players set @s temp_assigned 1

execute if score @s temp_assigned matches 0 unless entity @a[scores={Player=-3}] run function players:assign/assign_p3
execute if score @s Player matches -3 run scoreboard players set @s temp_assigned 1

execute if score @s temp_assigned matches 0 unless entity @a[scores={Player=-4}] run function players:assign/assign_p4
execute if score @s Player matches -4 run scoreboard players set @s temp_assigned 1

execute if score @s temp_assigned matches 0 unless entity @a[scores={Player=-5}] run function players:assign/assign_p5
execute if score @s Player matches -5 run scoreboard players set @s temp_assigned 1

execute if score @s temp_assigned matches 0 unless entity @a[scores={Player=-6}] run function players:assign/assign_p6
execute if score @s Player matches -6 run scoreboard players set @s temp_assigned 1

execute if score @s temp_assigned matches 0 unless entity @a[scores={Player=-7}] run function players:assign/assign_p7
execute if score @s Player matches -7 run scoreboard players set @s temp_assigned 1

execute if score @s temp_assigned matches 0 unless entity @a[scores={Player=-8}] run function players:assign/assign_p8
execute if score @s Player matches -8 run scoreboard players set @s temp_assigned 1

execute if score @s temp_assigned matches 0 unless entity @a[scores={Player=-9}] run function players:assign/assign_p9
execute if score @s Player matches -9 run scoreboard players set @s temp_assigned 1

execute if score @s temp_assigned matches 0 unless entity @a[scores={Player=-10}] run function players:assign/assign_p10
execute if score @s Player matches -10 run scoreboard players set @s temp_assigned 1

execute if score @s temp_assigned matches 0 unless entity @a[scores={Player=-11}] run function players:assign/assign_p11
execute if score @s Player matches -11 run scoreboard players set @s temp_assigned 1

execute if score @s temp_assigned matches 0 unless entity @a[scores={Player=-12}] run function players:assign/assign_p12
execute if score @s Player matches -12 run scoreboard players set @s temp_assigned 1

execute if score @s temp_assigned matches 0 unless entity @a[scores={Player=-13}] run function players:assign/assign_p13
execute if score @s Player matches -13 run scoreboard players set @s temp_assigned 1

execute if score @s temp_assigned matches 0 unless entity @a[scores={Player=-14}] run function players:assign/assign_p14
execute if score @s Player matches -14 run scoreboard players set @s temp_assigned 1

execute if score @s temp_assigned matches 0 unless entity @a[scores={Player=-15}] run function players:assign/assign_p15
execute if score @s Player matches -15 run scoreboard players set @s temp_assigned 1

execute if score @s temp_assigned matches 0 unless entity @a[scores={Player=-16}] run function players:assign/assign_p16
execute if score @s Player matches -16 run scoreboard players set @s temp_assigned 1

# Clean up temporary score
scoreboard players reset @s temp_assigned