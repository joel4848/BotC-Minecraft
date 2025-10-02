# only allow the assigned player and storyteller use votelight

execute if score @s Player matches -7 run function voting:switch_lights/votelight_7_interact
execute unless score @s Player matches -7 if score @s Storyteller matches 1 run function voting:switch_lights/votelight_7_interact
execute unless score @s Player matches -7 unless score @s Storyteller matches 1 run function voting:switch_lights_check/votelight_7_fail
advancement revoke @s only voting:votelight_7_interact