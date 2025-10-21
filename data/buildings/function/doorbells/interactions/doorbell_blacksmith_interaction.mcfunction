

execute unless score #doorbell_blacksmith_cooldown temp matches 0 run execute as @s run function buildings:doorbells/doorbell_fail
execute if score #doorbell_blacksmith_cooldown temp matches 0 run execute as @s run schedule function buildings:doorbells/play_sound/doorbell_sound_blacksmith 7t
execute if score #doorbell_cemetary_cooldown temp matches 0 run execute as @s run function buildings:doorbells/animations/bell_pull_blacksmith_animation

advancement revoke @a only buildings:doorbell_blacksmith

