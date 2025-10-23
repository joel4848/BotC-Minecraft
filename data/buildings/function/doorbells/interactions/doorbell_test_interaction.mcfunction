
execute unless score #doorbell_test_cooldown temp matches 0 run execute as @s run function buildings:doorbells/doorbell_fail
execute if score #doorbell_test_cooldown temp matches 0 run execute as @s run function buildings:doorbells/doorbell_success

advancement revoke @a only buildings:doorbell_test
