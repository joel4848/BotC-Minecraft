# only allow the assigned player and storyteller use votelight

execute if score @s Player matches -15 run function voting:switch_lights/votelight_15_interact
execute unless score @s Player matches -15 if score @s Storyteller matches 1 run function voting:switch_lights/votelight_15_interact
execute unless score @s Player matches -15 unless score @s Storyteller matches 1 run function voting:switch_lights_check/votelight_15_fail
advancement revoke @s only voting:votelight_15_interact