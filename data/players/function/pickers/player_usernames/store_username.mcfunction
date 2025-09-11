# say ran store username

$data modify storage minecraft:joelbotc player_$(picked_picker)_username set from entity @e[type=armor_stand,tag=player_head_$(picked_picker),limit=1] ArmorItems[3].components.minecraft:profile.name