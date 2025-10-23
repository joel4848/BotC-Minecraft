
# Store players' health
execute as @a[x=193,y=96,z=-51,dx=1,dy=1,dz=0.3] store result score @s tempHealth run data get entity @s Health 1

# Damage unless health <3
execute as @a[x=193,y=96,z=-51,dx=1,dy=1,dz=0.3] unless score @s tempHealth matches ..3 run damage @s 3 cactus

execute if score #crematorium_running temp matches 1 run schedule function buildings:crematorium/conveyor/crush_players 5t

