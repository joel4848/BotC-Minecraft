

execute unless score #doorbell_library_cooldown temp matches 0 run execute as @s run function buildings:doorbells/doorbell_fail
execute if score #doorbell_library_cooldown temp matches 0 run execute as @s run function buildings:doorbells/play_sound/doorbell_sound_library

advancement revoke @a only buildings:doorbell_library

