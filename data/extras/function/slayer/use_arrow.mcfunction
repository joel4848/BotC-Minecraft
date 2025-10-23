execute anchored eyes positioned ^ ^ ^2.5 run particle witch ~ ~ ~ 0.1 0.1 0.1 1 20
execute anchored eyes positioned ^ ^ ^2.5 as @a[distance=..2.4,sort=nearest,scores={Player=..-1},limit=1] at @s run particle happy_villager ~ ~ ~ 0.1 0.1 0.1 1 20

data remove storage extras:immersive_pvp allowed
execute store result storage extras:slayer slayer int -1 run scoreboard players get @s Player
execute \
    anchored eyes \
    positioned ^ ^ ^2.5 \
    as @a[distance=..2.25,sort=nearest,scores={Player=..-1},limit=1] \
    store result storage extras:slayer target int -1 \
    run scoreboard players get @s Player

function extras:slayer/remove_crossbow
execute if data storage extras:slayer target run function extras:slayer/target with storage extras:slayer
