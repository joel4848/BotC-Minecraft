# this function exists to test whether or not this is the first use of the axe prior to cooldown being set
# this also tests to see if the player is looking at another player, not necessary but drops bad requests quicker
# cannot be used if there's already an active psychopath choice

execute \
    if data storage extras:psychopath allowed \
    unless score @s psychopath_axe_cooldown matches 1.. \
    if predicate extras:looking_at_player \
    run function extras:psychopath/axe/use

# revoke advancement and set the cooldown to 2 ticks
# this is done so the axe cooldown can only reach 0 when not held

advancement revoke @s only extras:psychopath/use_axe
advancement revoke @s only extras:psychopath/axe_cooldown
scoreboard players set @s psychopath_axe_cooldown 2
