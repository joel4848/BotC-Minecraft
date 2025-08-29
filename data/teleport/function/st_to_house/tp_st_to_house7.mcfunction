execute if score #tp_disabled temp matches 0 run teleport @a[scores={Storyteller=1}] @e[limit=1,tag=house7,type=minecraft:marker]
execute if score #tp_disabled temp matches 1 run title @a[scores={Storyteller=1}] title {"color":"red","text":"tp disabled","underlined":false}
execute if score #tp_disabled temp matches 1 run title @a[scores={Storyteller=1}] subtitle {"color":"gold","text":"You must run 'End Day' first!","underlined":true}
