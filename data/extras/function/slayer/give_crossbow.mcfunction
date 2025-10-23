execute if score #immersive_pvp temp matches 0 if score #pvp_enabled temp matches 0 run return run give @s arrow[ \
    item_name="{\"text\":\"Slayer Arrow\",\"italic\":false,\"color\":\"dark_red\"}", \
    lore=[ \
        "{\"text\":\"Die.\",\"italic\":false,\"color\":\"light_purple\"}", \
        "\"\"", \
        "{\"text\":\"(Right click to use)\"}" \
    ], \
    enchantment_glint_override=true, \
    food={ \
        nutrition: 0, \
        saturation: 0, \
        can_always_eat: true, \
        eat_seconds: 2147483647 \
    }, \
    custom_data={ \
        slayer_weapon: true, \
        slayer_arrow: true, \
        bypasses_pvp: true \
    } \
]

give @s crossbow[ \
    item_name="{\"text\":\"Slayer Crossbow\",\"italic\":false,\"color\":\"dark_red\"}", \
    lore=["{\"text\":\"Die.\",\"italic\":false,\"color\":\"light_purple\"}"], \
    enchantment_glint_override=true, \
    custom_data={ \
        slayer_weapon: true, \
        bypasses_pvp: true \
    } \
]

give @s arrow