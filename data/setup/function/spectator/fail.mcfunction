scoreboard players reset @s become_spectator
tellraw @s [{ \
    "text": "[!] ", \
    "color": "dark_red" \
}, { \
    "text": "You cannot become a Spectator while you have a seat!", \
    "color": "red" \
}]
