execute as @a[scores={become_spectator=1..}] unless score @s Player = @s Player run function setup:spectator/join_team
execute as @a[scores={become_spectator=1..}] if score @s Player = @s Player run function setup:spectator/fail
scoreboard players enable @a become_spectator
