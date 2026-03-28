item modify entity @s weapon {function:"set_custom_data",tag:{persistent:false}}
item modify entity @s weapon {function:"set_components",components:{enchantment_glint_override:false}}

tellraw @s { \
    "text": "Held item is no longer persistent!", \
    "color": "dark_gray", \
    "italic": true \
}
