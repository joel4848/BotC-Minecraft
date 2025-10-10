effect clear @a[scores={Player=..-1}] glowing
execute as @a[team=Psychopath] if score @s Alive matches 1 run team join Alive @s
execute as @a[team=Psychopath] if score @s Alive matches 0 run team join Dead @s

data remove storage extras:slayer slayer
data remove storage extras:slayer target
data remove storage extras:slayer arrow_shot
data merge storage extras:slayer {allowed:true}

schedule function extras:slayer/detect_held_arrow 1s
execute if score #immersive_pvp temp matches 1 run gamerule pvp true

schedule function setup:reset_title_times 10s
