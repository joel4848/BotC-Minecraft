# debug particles for locking in a good position & distance

execute anchored eyes positioned ^ ^ ^2.5 run particle witch ~ ~ ~ 0.1 0.1 0.1 1 20
execute anchored eyes positioned ^ ^ ^2.5 as @a[distance=..2.4,sort=nearest,scores={Player=..0},limit=1] at @s run particle happy_villager ~ ~ ~ 0.1 0.1 0.1 1 20

# store the psychopath and target into storage for easier macro
# deny storyteller psychopath killing

data remove storage extras:immersive_pvp allowed
execute store result storage extras:psychopath psychopath int -1 run scoreboard players get @s Player
execute \
    anchored eyes \
    positioned ^ ^ ^2.5 \
    as @a[distance=..2.25,sort=nearest,scores={Player=..-1},limit=1] \
    store result storage extras:psychopath target int -1 \
    run scoreboard players get @s Player

# only run if the target actually exists

execute if data storage extras:psychopath target run function extras:psychopath/axe/target with storage extras:psychopath
