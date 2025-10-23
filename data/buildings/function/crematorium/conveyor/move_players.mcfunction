
execute as @a[x=193,y=96,z=-49.4,dx=0,dy=0,dz=3,] at @s run tp ~ ~ ~-0.03

execute if score #crematorium_running temp matches 1 run schedule function buildings:crematorium/conveyor/move_players 1t
