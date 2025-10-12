advancement revoke @s only extras:slayer/shot_crossbow

# Kill false arrows

execute unless data storage extras:immersive_pvp allowed run return run kill @e[limit=1,sort=nearest,type=arrow]

# Store the slayer data

gamerule pvp true
execute store result storage extras:slayer slayer int -1 run scoreboard players get @s Player
data merge storage extras:slayer {arrow_shot:true}

function extras:slayer/remove_crossbow
schedule function extras:slayer/whiffed_arrows 1s
