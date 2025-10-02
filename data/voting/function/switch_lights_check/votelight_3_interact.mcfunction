# only allow the assigned player and storyteller use votelight

execute if score @s Player matches -3 run function voting:switch_lights/votelight_3_interact
execute unless score @s Player matches -3 if score @s Storyteller matches 1 run function voting:switch_lights/votelight_3_interact
execute unless score @s Player matches -3 unless score @s Storyteller matches 1 run function voting:switch_lights_check/votelight_3_fail
advancement revoke @s only voting:votelight_3_interact