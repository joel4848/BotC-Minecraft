
# Clear ALL canvases off house easels

execute as @e[type=xercapaint:easel,tag=house_easel] run data merge entity @s {Item:{id:"minecraft:air",Count:0b}}


# Replenish house easels with blank large canvases

execute as @e[type=xercapaint:easel,tag=house_easel] run data modify entity @s Item.id set value "xercapaint:item_canvas_large"
