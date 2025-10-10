scoreboard players remove @s psychopath_axe_cooldown 1

# if the score is greater than 0, remove the advancement
# this is done to allow this function to run again

execute if score @s psychopath_axe_cooldown matches 1.. run return run advancement revoke @s only extras:psychopath/axe_cooldown

# this will only be reached if the psychopath's axe is no longer being actively used

scoreboard players reset @s psychopath_axe_cooldown
