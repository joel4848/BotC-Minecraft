# only allow the assigned player and storyteller use votelight

execute if score @s Player matches -9 run function voting:switch_lights/votelight_9_punch
execute unless score @s Player matches -9 if score @s Storyteller matches 1 run function voting:switch_lights/votelight_9_punch
execute unless score @s Player matches -9 unless score @s Storyteller matches 1 run function voting:switch_lights_check/votelight_9_fail
advancement revoke @s only voting:votelight_9_punch