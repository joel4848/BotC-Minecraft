
# Chiseled nether bricks block

execute unless score #summon_st_placed temp matches 1 run setblock 176 93 1 chiseled_nether_bricks

# Bell

execute unless score #summon_st_placed temp matches 1 run setblock 176 94 1 bell[facing=east,attachment=floor] replace

# Signs

execute unless score #summon_st_placed temp matches 1 run setblock 175 93 1 dark_oak_wall_sign[facing=west]{front_text:{color:"white",has_glowing_text:1b,messages:['""','"Request audience"','"with Storyteller"','""']},id:"minecraft:sign",x:175,y:93,z:1} replace
execute unless score #summon_st_placed temp matches 1 run setblock 176 93 2 dark_oak_wall_sign[facing=south]{front_text:{color:"white",has_glowing_text:1b,messages:['""','"Request audience"','"with Storyteller"','""']},id:"minecraft:sign",x:175,y:93,z:1} replace
execute unless score #summon_st_placed temp matches 1 run setblock 177 93 1 dark_oak_wall_sign[facing=east]{front_text:{color:"white",has_glowing_text:1b,messages:['""','"Request audience"','"with Storyteller"','""']},id:"minecraft:sign",x:175,y:93,z:1} replace
execute unless score #summon_st_placed temp matches 1 run setblock 176 93 0 dark_oak_wall_sign[facing=north]{front_text:{color:"white",has_glowing_text:1b,messages:['""','"Request audience"','"with Storyteller"','""']},id:"minecraft:sign",x:175,y:93,z:1} replace

# Interaction

execute unless score #summon_st_placed temp matches 1 run summon interaction 176 94 1 {width:1.1f,height:1.1f,response:1b,Tags:["summon_st"]}

# Scoreboard

scoreboard players set #summon_st_placed temp 1

# Enable trigger scoreboard

scoreboard players enable @a SummonSTInteracted
scoreboard players enable @a SummonSTConfirmed
