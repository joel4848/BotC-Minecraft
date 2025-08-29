execute positioned 150 94 -15 run execute as @p run execute if entity @s[gamemode=creative] run scoreboard players set global HarryKey 1
execute positioned 150 94 -15 run execute as @p run execute if entity @s[name="LordSedgley"] run scoreboard players set global HarryKey 1
execute positioned 150 94 -15 run execute as @p run execute if entity @s[gamemode=creative] if score global HarryKey matches 1 run give @p minecraft:stick[custom_name='{"text":"Harry\'s Key","italic":false}',enchantment_glint_override=true] 1
execute positioned 150 94 -15 run execute as @p run execute if entity @s[name="LordSedgley"] if score global HarryKey matches 1 run give @p minecraft:stick[custom_name='{"text":"Harry\'s Key","italic":false}',enchantment_glint_override=true] 1
execute positioned 150 94 -15 run execute if score global HarryKey matches 0 run tellraw @p {"text":"That key is NOT for you!","color":"red"}
scoreboard players set global HarryKey 0