# only allow the assigned player and storyteller use votelight

execute if score @s Player matches -13 run function voting:switch_lights/votelight_13_punch
execute unless score @s Player matches -13 if score @s Storyteller matches 1 run function voting:switch_lights/votelight_13_punch
execute unless score @s Player matches -13 unless score @s Storyteller matches 1 run function voting:switch_lights_check/votelight_13_fail
advancement revoke @s only voting:votelight_13_punch