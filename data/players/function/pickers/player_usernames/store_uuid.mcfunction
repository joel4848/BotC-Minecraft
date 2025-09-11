function players:pickers/player_usernames/reset_uuid_storage

$data modify storage minecraft:joelbotc player_$(picked_picker)_uuid_0 set from entity @e[type=interaction,tag=picker_interaction$(picked_picker),limit=1] interaction.player[0]
$data modify storage minecraft:joelbotc player_$(picked_picker)_uuid_1 set from entity @e[type=interaction,tag=picker_interaction$(picked_picker),limit=1] interaction.player[1]
$data modify storage minecraft:joelbotc player_$(picked_picker)_uuid_2 set from entity @e[type=interaction,tag=picker_interaction$(picked_picker),limit=1] interaction.player[2]
$data modify storage minecraft:joelbotc player_$(picked_picker)_uuid_3 set from entity @e[type=interaction,tag=picker_interaction$(picked_picker),limit=1] interaction.player[3]


# say ran store uuid