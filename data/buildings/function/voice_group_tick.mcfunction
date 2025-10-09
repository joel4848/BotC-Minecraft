
# Town square (large cube around town square adding everyone inside - four walls and a ceiling removing people

execute as @a[x=151,y=93,z=-15,dx=32,dy=11,dz=32] run voicechat join "~ Town Square"
execute as @a[x=184,y=107,z=-16,dx=-34,dy=0,dz=34,] run voicechat leave
execute as @a[x=184,y=104,z=-16,dx=0,dy=-11,dz=34,] run voicechat leave
execute as @a[x=150,y=93,z=-16,dx=34,dy=11,dz=0,] run voicechat leave
execute as @a[x=150,y=104,z=18,dx=0,dy=-11,dz=-34,] run voicechat leave
execute as @a[x=184,y=93,z=18,dx=-34,dy=11,dz=0] run voicechat leave

# House join

execute as @e[type=marker,tag=house1] at @s run execute as @a[distance=..1] run voicechat join "~ House 01"
execute as @e[type=marker,tag=house2] at @s run execute as @a[distance=..1] run voicechat join "~ House 02"
execute as @e[type=marker,tag=house3] at @s run execute as @a[distance=..1] run voicechat join "~ House 03"
execute as @e[type=marker,tag=house4] at @s run execute as @a[distance=..1] run voicechat join "~ House 04"
execute as @e[type=marker,tag=house5] at @s run execute as @a[distance=..1] run voicechat join "~ House 05"
execute as @e[type=marker,tag=house6] at @s run execute as @a[distance=..1.5] run voicechat join "~ House 06"
execute as @e[type=marker,tag=house7] at @s run execute as @a[distance=..1.5] run voicechat join "~ House 07"
execute as @e[type=marker,tag=house8] at @s run execute as @a[distance=..1.5] run voicechat join "~ House 08"
execute as @e[type=marker,tag=house9] at @s run execute as @a[distance=..1.5] run voicechat join "~ House 09"
execute as @e[type=marker,tag=house10] at @s run execute as @a[distance=..1] run voicechat join "~ House 10"
execute as @e[type=marker,tag=house11] at @s run execute as @a[distance=..1] run voicechat join "~ House 11"
execute as @e[type=marker,tag=house12] at @s run execute as @a[distance=..1] run voicechat join "~ House 12"
execute as @e[type=marker,tag=house13] at @s run execute as @a[distance=..1] run voicechat join "~ House 13"
execute as @e[type=marker,tag=house14] at @s run execute as @a[distance=..1] run voicechat join "~ House 14"
execute as @e[type=marker,tag=house15] at @s run execute as @a[distance=..1] run voicechat join "~ House 15"
execute as @e[type=marker,tag=house16] at @s run execute as @a[distance=..1] run voicechat join "~ House 16"

# House leave

execute as @e[type=marker,tag=house_exit1] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=house_exit2] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=house_exit3] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=house_exit4] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=house_exit5] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=house_exit6] at @s run execute as @a[distance=..1.5] run voicechat leave
execute as @e[type=marker,tag=house_exit7] at @s run execute as @a[distance=..1.5] run voicechat leave
execute as @e[type=marker,tag=house_exit8] at @s run execute as @a[distance=..1.5] run voicechat leave
execute as @e[type=marker,tag=house_exit9] at @s run execute as @a[distance=..1.5] run voicechat leave
execute as @e[type=marker,tag=house_exit10] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=house_exit11] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=house_exit12] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=house_exit13] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=house_exit14] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=house_exit15] at @s run execute as @a[distance=..1] run voicechat leave
execute as @e[type=marker,tag=house_exit16] at @s run execute as @a[distance=..1] run voicechat leave




