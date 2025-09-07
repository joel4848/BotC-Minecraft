## Step 1: Summon temp markers to remember all current seat positions
execute as @e[type=marker,tag=seat1] at @s run summon marker ~ ~ ~ {Tags:["temp1"]}
execute as @e[type=marker,tag=seat2] at @s run summon marker ~ ~ ~ {Tags:["temp2"]}
execute as @e[type=marker,tag=seat3] at @s run summon marker ~ ~ ~ {Tags:["temp3"]}
execute as @e[type=marker,tag=seat4] at @s run summon marker ~ ~ ~ {Tags:["temp4"]}
execute as @e[type=marker,tag=seat5] at @s run summon marker ~ ~ ~ {Tags:["temp5"]}
execute as @e[type=marker,tag=seat6] at @s run summon marker ~ ~ ~ {Tags:["temp6"]}
execute as @e[type=marker,tag=seat7] at @s run summon marker ~ ~ ~ {Tags:["temp7"]}
execute as @e[type=marker,tag=seat8] at @s run summon marker ~ ~ ~ {Tags:["temp8"]}
execute as @e[type=marker,tag=seat9] at @s run summon marker ~ ~ ~ {Tags:["temp9"]}
execute as @e[type=marker,tag=seat10] at @s run summon marker ~ ~ ~ {Tags:["temp10"]}
execute as @e[type=marker,tag=seat11] at @s run summon marker ~ ~ ~ {Tags:["temp11"]}
execute as @e[type=marker,tag=seat12] at @s run summon marker ~ ~ ~ {Tags:["temp12"]}
execute as @e[type=marker,tag=seat13] at @s run summon marker ~ ~ ~ {Tags:["temp13"]}
execute as @e[type=marker,tag=seat14] at @s run summon marker ~ ~ ~ {Tags:["temp14"]}
execute as @e[type=marker,tag=seat15] at @s run summon marker ~ ~ ~ {Tags:["temp15"]}
execute as @e[type=marker,tag=seat16] at @s run summon marker ~ ~ ~ {Tags:["temp16"]}

## Step 2: Teleport each seat to new location (2 steps anti-clockwise)
tp @e[type=marker,tag=seat1,limit=1] @e[type=marker,tag=temp15,limit=1]
tp @e[type=marker,tag=seat2,limit=1] @e[type=marker,tag=temp16,limit=1]
tp @e[type=marker,tag=seat3,limit=1] @e[type=marker,tag=temp1,limit=1]
tp @e[type=marker,tag=seat4,limit=1] @e[type=marker,tag=temp2,limit=1]
tp @e[type=marker,tag=seat5,limit=1] @e[type=marker,tag=temp3,limit=1]
tp @e[type=marker,tag=seat6,limit=1] @e[type=marker,tag=temp4,limit=1]
tp @e[type=marker,tag=seat7,limit=1] @e[type=marker,tag=temp5,limit=1]
tp @e[type=marker,tag=seat8,limit=1] @e[type=marker,tag=temp6,limit=1]
tp @e[type=marker,tag=seat9,limit=1] @e[type=marker,tag=temp7,limit=1]
tp @e[type=marker,tag=seat10,limit=1] @e[type=marker,tag=temp8,limit=1]
tp @e[type=marker,tag=seat11,limit=1] @e[type=marker,tag=temp9,limit=1]
tp @e[type=marker,tag=seat12,limit=1] @e[type=marker,tag=temp10,limit=1]
tp @e[type=marker,tag=seat13,limit=1] @e[type=marker,tag=temp11,limit=1]
tp @e[type=marker,tag=seat14,limit=1] @e[type=marker,tag=temp12,limit=1]
tp @e[type=marker,tag=seat15,limit=1] @e[type=marker,tag=temp13,limit=1]
tp @e[type=marker,tag=seat16,limit=1] @e[type=marker,tag=temp14,limit=1]

## Step 3: Clean up temporary markers
kill @e[type=marker,tag=temp1]
kill @e[type=marker,tag=temp2]
kill @e[type=marker,tag=temp3]
kill @e[type=marker,tag=temp4]
kill @e[type=marker,tag=temp5]
kill @e[type=marker,tag=temp6]
kill @e[type=marker,tag=temp7]
kill @e[type=marker,tag=temp8]
kill @e[type=marker,tag=temp9]
kill @e[type=marker,tag=temp10]
kill @e[type=marker,tag=temp11]
kill @e[type=marker,tag=temp12]
kill @e[type=marker,tag=temp13]
kill @e[type=marker,tag=temp14]
kill @e[type=marker,tag=temp15]
kill @e[type=marker,tag=temp16]
