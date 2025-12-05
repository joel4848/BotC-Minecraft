item modify entity @s weapon {function:"set_custom_data",tag:{persistent:true}}
item modify entity @s weapon {function:"set_components",components:{enchantment_glint_override:true}}

tellraw @s { \
    "text": "Held item is now persistent!", \
    "color": "dark_gray", \
    "italic": true \
}
