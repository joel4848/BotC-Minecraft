scoreboard players reset @s become_spectator

execute if entity @s[team=!Spectator] run return run function triggers:spectator/pass
execute if entity @s[team=Spectator] run return run function triggers:spectator/pass_invert
