teleport @a[scores={Player=-1}] @e[scores={Storyteller=1},limit=1]
teleport @a[scores={Player=-2}] @e[scores={Storyteller=1},limit=1]
teleport @a[scores={Player=-3}] @e[scores={Storyteller=1},limit=1]
teleport @a[scores={Player=-4}] @e[scores={Storyteller=1},limit=1]
teleport @a[scores={Player=-5}] @e[scores={Storyteller=1},limit=1]
teleport @a[scores={Player=-6}] @e[scores={Storyteller=1},limit=1]
teleport @a[scores={Player=-7}] @e[scores={Storyteller=1},limit=1]
teleport @a[scores={Player=-8}] @e[scores={Storyteller=1},limit=1]
teleport @a[scores={Player=-9}] @e[scores={Storyteller=1},limit=1]
teleport @a[scores={Player=-10}] @e[scores={Storyteller=1},limit=1]
teleport @a[scores={Player=-11}] @e[scores={Storyteller=1},limit=1]
teleport @a[scores={Player=-12}] @e[scores={Storyteller=1},limit=1]
teleport @a[scores={Player=-13}] @e[scores={Storyteller=1},limit=1]
teleport @a[scores={Player=-14}] @e[scores={Storyteller=1},limit=1]
teleport @a[scores={Player=-15}] @e[scores={Storyteller=1},limit=1]
teleport @a[scores={Player=-16}] @e[scores={Storyteller=1},limit=1]

execute if block 199 95 0 lever[powered=false] run setblock 199 95 0 lever[face=wall,facing=east,powered=true]
execute if block 168 94 28 lever[powered=false] run setblock 168 94 28 lever[face=wall,facing=south,powered=true]
execute if block 138 94 18 lever[powered=false] run setblock 138 94 18 lever[face=wall,facing=west,powered=true]
execute if block 135 94 -1 lever[powered=false] run setblock 135 94 -1 lever[face=wall,facing=west,powered=true]
execute if block 136 94 -15 lever[powered=false] run setblock 136 94 -15 lever[face=wall,facing=west,powered=true]
execute if block 170 94 -28 lever[powered=false] run setblock 170 94 -28 lever[face=wall,facing=north,powered=true]
execute if block 193 95 -32 lever[powered=false] run setblock 193 95 -32 lever[face=wall,facing=north,powered=true]

setblock 199 95 1 oak_wood
setblock 167 94 28 oak_wood
setblock 138 94 19 oak_wood
setblock 135 94 0 oak_wood
setblock 136 94 -14 oak_wood
setblock 171 94 -28 oak_wood
setblock 194 95 -32 oak_wood

setblock 199 95 1 air
setblock 167 94 28 air
setblock 138 94 19 air
setblock 135 94 0 air
setblock 136 94 -14 air
setblock 171 94 -28 air
setblock 194 95 -32 air