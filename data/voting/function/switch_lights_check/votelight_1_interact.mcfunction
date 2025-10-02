# only allow the assigned player and storyteller use votelight

execute if score @s Player matches -1 run function voting:switch_lights/votelight_1_interact
execute unless score @s Player matches -1 if score @s Storyteller matches 1 run function voting:switch_lights/votelight_1_interact
execute unless score @s Player matches -1 unless score @s Storyteller matches 1 run function voting:switch_lights_check/votelight_1_fail
advancement revoke @s only voting:votelight_1_interact