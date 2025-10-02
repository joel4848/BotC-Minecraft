# only allow the assigned player and storyteller use votelight

execute if score @s Player matches -16 run function voting:switch_lights/votelight_16_punch
execute unless score @s Player matches -16 if score @s Storyteller matches 1 run function voting:switch_lights/votelight_16_punch
execute unless score @s Player matches -16 unless score @s Storyteller matches 1 run function voting:switch_lights_check/votelight_16_fail
advancement revoke @s only voting:votelight_16_punch