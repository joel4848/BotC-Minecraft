scoreboard players reset @s become_spectator

execute if entity @s[team=!Spectator] run return run function setup:spectator/pass
execute if entity @s[team=Spectator] run return run function setup:spectator/pass_invert
