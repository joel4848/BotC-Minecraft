kill @e[type=arrow]

execute as @a run function extras:slayer/remove_crossbow
execute unless data storage extras:immersive_pvp allowed unless data storage extras:slayer arrow_shot run return 0

function extras:slayer/whiffed_arrows_remacro with storage extras:slayer
