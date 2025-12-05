scoreboard players reset @s clear_books
clear @s writable_book[!custom_data~{persistent:true}]
clear @s written_book[!custom_data~{persistent:true}]

tellraw @s { \
    "text": "Your books have been cleared!", \
    "color": "dark_gray", \
    "italic": true \
}
