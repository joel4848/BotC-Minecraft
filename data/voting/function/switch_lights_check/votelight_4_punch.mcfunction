# only allow the assigned player and storyteller use votelight

execute if score @s Player matches -4 run function voting:switch_lights/votelight_4_punch
execute unless score @s Player matches -4 if score @s Storyteller matches 1 run function voting:switch_lights/votelight_4_punch
execute unless score @s Player matches -4 unless score @s Storyteller matches 1 run function voting:switch_lights_check/votelight_4_fail
advancement revoke @s only voting:votelight_4_punch