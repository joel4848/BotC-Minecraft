# only allow the assigned player and storyteller use votelight

execute if score @s Player matches -5 run function voting:switch_lights/votelight_5_interact
execute unless score @s Player matches -5 if score @s Storyteller matches 1 run function voting:switch_lights/votelight_5_interact
execute unless score @s Player matches -5 unless score @s Storyteller matches 1 run function voting:switch_lights_check/votelight_5_fail
advancement revoke @s only voting:votelight_5_interact