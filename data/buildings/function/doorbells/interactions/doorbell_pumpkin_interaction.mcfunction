

execute unless score #doorbell_pumpkin_cooldown temp matches 0 run execute as @s run function buildings:doorbells/doorbell_fail
execute if score #doorbell_pumpkin_cooldown temp matches 0 run execute as @s run schedule function buildings:doorbells/play_sound/doorbell_sound_pumpkin 7t
execute if score #doorbell_cemetary_cooldown temp matches 0 run execute as @s run function buildings:doorbells/animations/bell_pull_pumpkin_animation

advancement revoke @a only buildings:doorbell_pumpkin

