tellraw @s [ \
    {"color":"red","text":"You cannot interact with "}, \
    {"color":"dark_red","selector":"@a[scores={Player=-15}]"}, \
    {"color":"red","text":"'s vote light!"} \
]

execute at @e[tag=votelight15,limit=1,type=marker] run playsound block.fire.extinguish player @s ~ ~ ~ 0.2 1.1 1
execute at @e[tag=votelight15,limit=1,type=marker] run particle electric_spark ~ ~ ~ 0.3 0.3 0.3 0.2 100 force @s