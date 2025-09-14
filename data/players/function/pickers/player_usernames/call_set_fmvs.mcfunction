# say ran call fmvs
# tellraw @a ["Player_2_username: ",{"color":"green","nbt":"player_2_username","storage":"minecraft:joelbotc"}]
# tellraw @a ["#picked_picker temp: ",{"color":"green","score":{"name":"#picked_picker","objective":"temp"}}]

# execute as @a[scores={Storyteller=1}] run function players:pickers/player_usernames/set_fmvs with storage minecraft:joelbotc

execute as @s run function players:pickers/player_usernames/set_fmvs with storage minecraft:joelbotc