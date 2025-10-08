function teleport:player_to_house {player:1,yaw:-90}
function teleport:player_to_house {player:2,yaw:-135}
function teleport:player_to_house {player:3,yaw:35}
function teleport:player_to_house {player:4,yaw:0}
function teleport:player_to_house {player:5,yaw:-70}
function teleport:player_to_house {player:6,yaw:-60}
function teleport:player_to_house {player:7,yaw:60}
function teleport:player_to_house {player:8,yaw:90}
function teleport:player_to_house {player:9,yaw:90}
function teleport:player_to_house {player:10,yaw:-180}
function teleport:player_to_house {player:11,yaw:180}
function teleport:player_to_house {player:12,yaw:145}
function teleport:player_to_house {player:13,yaw:90}
function teleport:player_to_house {player:14,yaw:135}
function teleport:player_to_house {player:15,yaw:125}
function teleport:player_to_house {player:16,yaw:-90}

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