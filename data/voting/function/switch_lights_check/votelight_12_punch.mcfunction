# only allow the assigned player and storyteller use votelight

execute if score @s Player matches -12 run function voting:switch_lights/votelight_12_punch
execute unless score @s Player matches -12 if score @s Storyteller matches 1 run function voting:switch_lights/votelight_12_punch
execute unless score @s Player matches -12 unless score @s Storyteller matches 1 run function voting:switch_lights_check/votelight_12_fail
advancement revoke @s only voting:votelight_12_punch