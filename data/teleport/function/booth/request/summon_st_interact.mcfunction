
execute unless score #summon_st_pending temp matches 1 run execute as @s run function teleport:booth/request/summon_st_interact_success
execute if score #summon_st_pending temp matches 1 run execute as @s run function teleport:booth/request/summon_st_interact_fail

scoreboard players set #summon_st_pending temp 1
