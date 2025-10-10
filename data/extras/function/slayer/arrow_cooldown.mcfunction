scoreboard players remove @s slayer_arrow_cooldown 1

execute if score @s slayer_arrow_cooldown matches 1.. run return run advancement revoke @s only extras:slayer/arrow_cooldown

scoreboard players reset @s slayer_arrow_cooldown
