title @a title {"text":""}
title @a subtitle {"italic":true,"text":"The ferryman has returned his fares...","color":"gray"}

execute as @a[scores={Player=..0,Alive=0}] run scoreboard players set @s FerrymanWasDead 1

execute as @a[scores={Player=-1,FerrymanWasDead=1}] run function players:kill_revive/revive {player:1}
execute as @a[scores={Player=-2,FerrymanWasDead=1}] run function players:kill_revive/revive {player:2}
execute as @a[scores={Player=-3,FerrymanWasDead=1}] run function players:kill_revive/revive {player:3}
execute as @a[scores={Player=-4,FerrymanWasDead=1}] run function players:kill_revive/revive {player:4}
execute as @a[scores={Player=-5,FerrymanWasDead=1}] run function players:kill_revive/revive {player:5}
execute as @a[scores={Player=-6,FerrymanWasDead=1}] run function players:kill_revive/revive {player:6}
execute as @a[scores={Player=-7,FerrymanWasDead=1}] run function players:kill_revive/revive {player:7}
execute as @a[scores={Player=-8,FerrymanWasDead=1}] run function players:kill_revive/revive {player:8}
execute as @a[scores={Player=-9,FerrymanWasDead=1}] run function players:kill_revive/revive {player:9}
execute as @a[scores={Player=-10,FerrymanWasDead=1}] run function players:kill_revive/revive {player:10}
execute as @a[scores={Player=-11,FerrymanWasDead=1}] run function players:kill_revive/revive {player:11}
execute as @a[scores={Player=-12,FerrymanWasDead=1}] run function players:kill_revive/revive {player:12}
execute as @a[scores={Player=-13,FerrymanWasDead=1}] run function players:kill_revive/revive {player:13}
execute as @a[scores={Player=-14,FerrymanWasDead=1}] run function players:kill_revive/revive {player:14}
execute as @a[scores={Player=-15,FerrymanWasDead=1}] run function players:kill_revive/revive {player:15}
execute as @a[scores={Player=-16,FerrymanWasDead=1}] run function players:kill_revive/revive {player:16}

execute as @a[scores={Player=-1,FerrymanWasDead=1}] run function players:kill_revive/kill {player:1}
execute as @a[scores={Player=-2,FerrymanWasDead=1}] run function players:kill_revive/kill {player:2}
execute as @a[scores={Player=-3,FerrymanWasDead=1}] run function players:kill_revive/kill {player:3}
execute as @a[scores={Player=-4,FerrymanWasDead=1}] run function players:kill_revive/kill {player:4}
execute as @a[scores={Player=-5,FerrymanWasDead=1}] run function players:kill_revive/kill {player:5}
execute as @a[scores={Player=-6,FerrymanWasDead=1}] run function players:kill_revive/kill {player:6}
execute as @a[scores={Player=-7,FerrymanWasDead=1}] run function players:kill_revive/kill {player:7}
execute as @a[scores={Player=-8,FerrymanWasDead=1}] run function players:kill_revive/kill {player:8}
execute as @a[scores={Player=-9,FerrymanWasDead=1}] run function players:kill_revive/kill {player:9}
execute as @a[scores={Player=-10,FerrymanWasDead=1}] run function players:kill_revive/kill {player:10}
execute as @a[scores={Player=-11,FerrymanWasDead=1}] run function players:kill_revive/kill {player:11}
execute as @a[scores={Player=-12,FerrymanWasDead=1}] run function players:kill_revive/kill {player:12}
execute as @a[scores={Player=-13,FerrymanWasDead=1}] run function players:kill_revive/kill {player:13}
execute as @a[scores={Player=-14,FerrymanWasDead=1}] run function players:kill_revive/kill {player:14}
execute as @a[scores={Player=-15,FerrymanWasDead=1}] run function players:kill_revive/kill {player:15}
execute as @a[scores={Player=-16,FerrymanWasDead=1}] run function players:kill_revive/kill {player:16}

execute as @a[scores={Player=..0,Alive=0}] run scoreboard players set @s FerrymanWasDead 0