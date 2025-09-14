
title @a title {"text":""}
title @a subtitle {"italic":true,"text":"The ferryman has returned his fares...","color":"gray"}

execute as @a[scores={Player=..0,Alive=0}] run scoreboard players set @s FerrymanWasDead 1

execute as @a[scores={Player=-1,FerrymanWasDead=1}] run function players:kill_revive/revive_p1
execute as @a[scores={Player=-2,FerrymanWasDead=1}] run function players:kill_revive/revive_p2
execute as @a[scores={Player=-3,FerrymanWasDead=1}] run function players:kill_revive/revive_p3
execute as @a[scores={Player=-4,FerrymanWasDead=1}] run function players:kill_revive/revive_p4
execute as @a[scores={Player=-5,FerrymanWasDead=1}] run function players:kill_revive/revive_p5
execute as @a[scores={Player=-6,FerrymanWasDead=1}] run function players:kill_revive/revive_p6
execute as @a[scores={Player=-7,FerrymanWasDead=1}] run function players:kill_revive/revive_p7
execute as @a[scores={Player=-8,FerrymanWasDead=1}] run function players:kill_revive/revive_p8
execute as @a[scores={Player=-9,FerrymanWasDead=1}] run function players:kill_revive/revive_p9
execute as @a[scores={Player=-10,FerrymanWasDead=1}] run function players:kill_revive/revive_p10
execute as @a[scores={Player=-11,FerrymanWasDead=1}] run function players:kill_revive/revive_p11
execute as @a[scores={Player=-12,FerrymanWasDead=1}] run function players:kill_revive/revive_p12
execute as @a[scores={Player=-13,FerrymanWasDead=1}] run function players:kill_revive/revive_p13
execute as @a[scores={Player=-14,FerrymanWasDead=1}] run function players:kill_revive/revive_p14
execute as @a[scores={Player=-15,FerrymanWasDead=1}] run function players:kill_revive/revive_p15
execute as @a[scores={Player=-16,FerrymanWasDead=1}] run function players:kill_revive/revive_p16


execute as @a[scores={Player=-1,FerrymanWasDead=1}] run function players:kill_revive/kill_p1
execute as @a[scores={Player=-2,FerrymanWasDead=1}] run function players:kill_revive/kill_p2
execute as @a[scores={Player=-3,FerrymanWasDead=1}] run function players:kill_revive/kill_p3
execute as @a[scores={Player=-4,FerrymanWasDead=1}] run function players:kill_revive/kill_p4
execute as @a[scores={Player=-5,FerrymanWasDead=1}] run function players:kill_revive/kill_p5
execute as @a[scores={Player=-6,FerrymanWasDead=1}] run function players:kill_revive/kill_p6
execute as @a[scores={Player=-7,FerrymanWasDead=1}] run function players:kill_revive/kill_p7
execute as @a[scores={Player=-8,FerrymanWasDead=1}] run function players:kill_revive/kill_p8
execute as @a[scores={Player=-9,FerrymanWasDead=1}] run function players:kill_revive/kill_p9
execute as @a[scores={Player=-10,FerrymanWasDead=1}] run function players:kill_revive/kill_p10
execute as @a[scores={Player=-11,FerrymanWasDead=1}] run function players:kill_revive/kill_p11
execute as @a[scores={Player=-12,FerrymanWasDead=1}] run function players:kill_revive/kill_p12
execute as @a[scores={Player=-13,FerrymanWasDead=1}] run function players:kill_revive/kill_p13
execute as @a[scores={Player=-14,FerrymanWasDead=1}] run function players:kill_revive/kill_p14
execute as @a[scores={Player=-15,FerrymanWasDead=1}] run function players:kill_revive/kill_p15
execute as @a[scores={Player=-16,FerrymanWasDead=1}] run function players:kill_revive/kill_p16

execute as @a[scores={Player=..0,Alive=0}] run scoreboard players set @s FerrymanWasDead 0



