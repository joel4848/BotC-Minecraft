scoreboard players reset @s clear_inventory
clear @s *[!custom_data~{persistent:true}]

tellraw @s { \
    "text": "Inventory cleared!", \
    "color": "dark_gray", \
    "italic": true \
}
