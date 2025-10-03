
# Bell

execute if score #summon_st_placed temp matches 1 run setblock 176 94 1 air

# Signs

execute if score #summon_st_placed temp matches 1 run setblock 175 93 1 air
execute if score #summon_st_placed temp matches 1 run setblock 176 93 2 air
execute if score #summon_st_placed temp matches 1 run setblock 177 93 1 air
execute if score #summon_st_placed temp matches 1 run setblock 176 93 0 air

# Chiseled nether bricks block

execute if score #summon_st_placed temp matches 1 run setblock 176 93 1 air

# Interaction

execute if score #summon_st_placed temp matches 1 run kill @e[type=interaction,tag=summon_st,limit=1]

# Scoreboard

scoreboard players set #summon_st_placed temp 0

# Timer times

title @a times 20t 60t 20t
