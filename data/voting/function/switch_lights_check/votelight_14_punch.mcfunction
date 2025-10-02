# only allow the assigned player and storyteller use votelight

execute if score @s Player matches -14 run function voting:switch_lights/votelight_14_punch
execute unless score @s Player matches -14 if score @s Storyteller matches 1 run function voting:switch_lights/votelight_14_punch
execute unless score @s Player matches -14 unless score @s Storyteller matches 1 run function voting:switch_lights_check/votelight_14_fail
advancement revoke @s only voting:votelight_14_punch