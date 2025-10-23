execute \
    if data storage extras:immersive_pvp allowed \
    unless score @s slayer_arrow_cooldown matches 1.. \
    if predicate extras:looking_at_player \
    run function extras:slayer/use_arrow

advancement revoke @s only extras:slayer/use_arrow
advancement revoke @s only extras:slayer/arrow_cooldown
scoreboard players set @s slayer_arrow_cooldown 2
