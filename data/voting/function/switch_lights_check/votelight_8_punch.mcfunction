# only allow the assigned player and storyteller use votelight

execute if score @s Player matches -8 run function voting:switch_lights/votelight_8_punch
execute unless score @s Player matches -8 if score @s Storyteller matches 1 run function voting:switch_lights/votelight_8_punch
execute unless score @s Player matches -8 unless score @s Storyteller matches 1 run function voting:switch_lights_check/votelight_8_fail
advancement revoke @s only voting:votelight_8_punch