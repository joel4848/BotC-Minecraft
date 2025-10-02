# only allow the assigned player and storyteller use votelight

execute if score @s Player matches -2 run function voting:switch_lights/votelight_2_interact
execute unless score @s Player matches -2 if score @s Storyteller matches 1 run function voting:switch_lights/votelight_2_interact
execute unless score @s Player matches -2 unless score @s Storyteller matches 1 run function voting:switch_lights_check/votelight_2_fail
advancement revoke @s only voting:votelight_2_interact