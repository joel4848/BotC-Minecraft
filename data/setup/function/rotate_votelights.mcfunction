## Step 1: Summon temp markers to remember all current votelight positions
execute as @e[type=marker,tag=votelight1] at @s run summon marker ~ ~ ~ {Tags:["vtemp1"]}
execute as @e[type=marker,tag=votelight2] at @s run summon marker ~ ~ ~ {Tags:["vtemp2"]}
execute as @e[type=marker,tag=votelight3] at @s run summon marker ~ ~ ~ {Tags:["vtemp3"]}
execute as @e[type=marker,tag=votelight4] at @s run summon marker ~ ~ ~ {Tags:["vtemp4"]}
execute as @e[type=marker,tag=votelight5] at @s run summon marker ~ ~ ~ {Tags:["vtemp5"]}
execute as @e[type=marker,tag=votelight6] at @s run summon marker ~ ~ ~ {Tags:["vtemp6"]}
execute as @e[type=marker,tag=votelight7] at @s run summon marker ~ ~ ~ {Tags:["vtemp7"]}
execute as @e[type=marker,tag=votelight8] at @s run summon marker ~ ~ ~ {Tags:["vtemp8"]}
execute as @e[type=marker,tag=votelight9] at @s run summon marker ~ ~ ~ {Tags:["vtemp9"]}
execute as @e[type=marker,tag=votelight10] at @s run summon marker ~ ~ ~ {Tags:["vtemp10"]}
execute as @e[type=marker,tag=votelight11] at @s run summon marker ~ ~ ~ {Tags:["vtemp11"]}
execute as @e[type=marker,tag=votelight12] at @s run summon marker ~ ~ ~ {Tags:["vtemp12"]}
execute as @e[type=marker,tag=votelight13] at @s run summon marker ~ ~ ~ {Tags:["vtemp13"]}
execute as @e[type=marker,tag=votelight14] at @s run summon marker ~ ~ ~ {Tags:["vtemp14"]}
execute as @e[type=marker,tag=votelight15] at @s run summon marker ~ ~ ~ {Tags:["vtemp15"]}
execute as @e[type=marker,tag=votelight16] at @s run summon marker ~ ~ ~ {Tags:["vtemp16"]}

## Step 2: Teleport each votelight to new location (2 steps anti-clockwise)
tp @e[type=marker,tag=votelight1,limit=1] @e[type=marker,tag=vtemp15,limit=1]
tp @e[type=marker,tag=votelight2,limit=1] @e[type=marker,tag=vtemp16,limit=1]
tp @e[type=marker,tag=votelight3,limit=1] @e[type=marker,tag=vtemp1,limit=1]
tp @e[type=marker,tag=votelight4,limit=1] @e[type=marker,tag=vtemp2,limit=1]
tp @e[type=marker,tag=votelight5,limit=1] @e[type=marker,tag=vtemp3,limit=1]
tp @e[type=marker,tag=votelight6,limit=1] @e[type=marker,tag=vtemp4,limit=1]
tp @e[type=marker,tag=votelight7,limit=1] @e[type=marker,tag=vtemp5,limit=1]
tp @e[type=marker,tag=votelight8,limit=1] @e[type=marker,tag=vtemp6,limit=1]
tp @e[type=marker,tag=votelight9,limit=1] @e[type=marker,tag=vtemp7,limit=1]
tp @e[type=marker,tag=votelight10,limit=1] @e[type=marker,tag=vtemp8,limit=1]
tp @e[type=marker,tag=votelight11,limit=1] @e[type=marker,tag=vtemp9,limit=1]
tp @e[type=marker,tag=votelight12,limit=1] @e[type=marker,tag=vtemp10,limit=1]
tp @e[type=marker,tag=votelight13,limit=1] @e[type=marker,tag=vtemp11,limit=1]
tp @e[type=marker,tag=votelight14,limit=1] @e[type=marker,tag=vtemp12,limit=1]
tp @e[type=marker,tag=votelight15,limit=1] @e[type=marker,tag=vtemp13,limit=1]
tp @e[type=marker,tag=votelight16,limit=1] @e[type=marker,tag=vtemp14,limit=1]

## Step 3: Clean up temporary markers
kill @e[type=marker,tag=vtemp1]
kill @e[type=marker,tag=vtemp2]
kill @e[type=marker,tag=vtemp3]
kill @e[type=marker,tag=vtemp4]
kill @e[type=marker,tag=vtemp5]
kill @e[type=marker,tag=vtemp6]
kill @e[type=marker,tag=vtemp7]
kill @e[type=marker,tag=vtemp8]
kill @e[type=marker,tag=vtemp9]
kill @e[type=marker,tag=vtemp10]
kill @e[type=marker,tag=vtemp11]
kill @e[type=marker,tag=vtemp12]
kill @e[type=marker,tag=vtemp13]
kill @e[type=marker,tag=vtemp14]
kill @e[type=marker,tag=vtemp15]
kill @e[type=marker,tag=vtemp16]