# Tick function for entering/leaving voice groups

# Town square (large cube around town square adding everyone inside - four walls and a ceiling removing people

execute as @a[x=151,y=93,z=-15,dx=32,dy=11,dz=32] run voicechat join "~ Town Square"
execute as @a[x=184,y=107,z=-16,dx=-34,dy=0,dz=34,] run voicechat leave
execute as @a[x=184,y=104,z=-16,dx=0,dy=-11,dz=34,] run voicechat leave
execute as @a[x=150,y=93,z=-16,dx=34,dy=11,dz=0,] run voicechat leave
execute as @a[x=150,y=104,z=18,dx=0,dy=-11,dz=-34,] run voicechat leave
execute as @a[x=184,y=93,z=18,dx=-34,dy=11,dz=0] run voicechat leave