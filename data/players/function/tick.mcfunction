# Enable trigger scoreboard

scoreboard players enable @a assign

# Seat assignments
execute as @a[scores={assign=1}] run function players:assign/assign_p1
scoreboard players set @a[scores={assign=1}] assign 0

execute as @a[scores={assign=2}] run function players:assign/assign_p2
scoreboard players set @a[scores={assign=2}] assign 0

execute as @a[scores={assign=3}] run function players:assign/assign_p3
scoreboard players set @a[scores={assign=3}] assign 0

execute as @a[scores={assign=4}] run function players:assign/assign_p4
scoreboard players set @a[scores={assign=4}] assign 0

execute as @a[scores={assign=5}] run function players:assign/assign_p5
scoreboard players set @a[scores={assign=5}] assign 0

execute as @a[scores={assign=6}] run function players:assign/assign_p6
scoreboard players set @a[scores={assign=6}] assign 0

execute as @a[scores={assign=7}] run function players:assign/assign_p7
scoreboard players set @a[scores={assign=7}] assign 0

execute as @a[scores={assign=8}] run function players:assign/assign_p8
scoreboard players set @a[scores={assign=8}] assign 0

execute as @a[scores={assign=9}] run function players:assign/assign_p9
scoreboard players set @a[scores={assign=9}] assign 0

execute as @a[scores={assign=10}] run function players:assign/assign_p10
scoreboard players set @a[scores={assign=10}] assign 0

execute as @a[scores={assign=11}] run function players:assign/assign_p11
scoreboard players set @a[scores={assign=11}] assign 0

execute as @a[scores={assign=12}] run function players:assign/assign_p12
scoreboard players set @a[scores={assign=12}] assign 0

execute as @a[scores={assign=13}] run function players:assign/assign_p13
scoreboard players set @a[scores={assign=13}] assign 0

execute as @a[scores={assign=14}] run function players:assign/assign_p14
scoreboard players set @a[scores={assign=14}] assign 0

execute as @a[scores={assign=15}] run function players:assign/assign_p15
scoreboard players set @a[scores={assign=15}] assign 0

execute as @a[scores={assign=16}] run function players:assign/assign_p16
scoreboard players set @a[scores={assign=16}] assign 0

# Leave seat
execute as @a[scores={assign=-1}] run function players:leave_seat
scoreboard players set @a[scores={assign=-1}] assign 0

# Auto-assign (I'm not fussy)
execute as @a[scores={assign=99}] run function players:auto_assign
scoreboard players set @a[scores={assign=99}] assign 0
