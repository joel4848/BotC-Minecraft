
scoreboard players set #cycle_roshambo_choices temp 0
schedule clear extras:roshambo/cycle_choices

# Announce Nominator's choice

execute if score @p[scores={Nominator=1}] Roshambo matches 1 run data modify entity @e[tag=nominator_roshambo,limit=1] text set value '[{"color":"blue","selector":"@a[scores={Nominator=1}]"},{"color":"blue","text":" chose:"},{"text":"\\n Rock"}]'
execute if score @p[scores={Nominator=1}] Roshambo matches 2 run data modify entity @e[tag=nominator_roshambo,limit=1] text set value '[{"color":"blue","selector":"@a[scores={Nominator=1}]"},{"color":"blue","text":" chose:"},{"text":"\\n Paper"}]'
execute if score @p[scores={Nominator=1}] Roshambo matches 3 run data modify entity @e[tag=nominator_roshambo,limit=1] text set value '[{"color":"blue","selector":"@a[scores={Nominator=1}]"},{"color":"blue","text":" chose:"},{"text":"\\n Scissors"}]'

# Announce Nominated's choice

execute if score @p[scores={Nominated=1}] Roshambo matches 1 run data modify entity @e[tag=nominated_roshambo,limit=1] text set value '[{"color":"red","selector":"@a[scores={Nominated=1}]"},{"color":"red","text":" chose:"},{"text":"\\n Rock"}]'
execute if score @p[scores={Nominated=1}] Roshambo matches 2 run data modify entity @e[tag=nominated_roshambo,limit=1] text set value '[{"color":"red","selector":"@a[scores={Nominated=1}]"},{"color":"red","text":" chose:"},{"text":"\\n Paper"}]'
execute if score @p[scores={Nominated=1}] Roshambo matches 3 run data modify entity @e[tag=nominated_roshambo,limit=1] text set value '[{"color":"red","selector":"@a[scores={Nominated=1}]"},{"color":"red","text":" chose:"},{"text":"\\n Scissors"}]'

# Announce result

# Tie

execute if score @p[scores={Nominated=1}] Roshambo = @p[scores={Nominator=1}] Roshambo run summon text_display 167 97 1 {billboard:"vertical",alignment:"center",Tags:["roshambo","result_roshambo"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5f,5f,5f]},text:'{"color":"gold","text":"It\'s a tie!"}',background:-16777216}

# Nominator wins

execute if score @p[scores={Nominator=1}] Roshambo matches 1 if score @p[scores={Nominated=1}] Roshambo matches 3 run summon text_display 167 97 1 {billboard:"vertical",alignment:"center",Tags:["roshambo","result_roshambo"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},text:'[{"selector":"@p[scores={Nominator=1}]"},{"color":"gold","text":" wins!"}]',background:-16777216}
execute if score @p[scores={Nominator=1}] Roshambo matches 2 if score @p[scores={Nominated=1}] Roshambo matches 1 run summon text_display 167 97 1 {billboard:"vertical",alignment:"center",Tags:["roshambo","result_roshambo"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},text:'[{"selector":"@p[scores={Nominator=1}]"},{"color":"gold","text":" wins!"}]',background:-16777216}
execute if score @p[scores={Nominator=1}] Roshambo matches 3 if score @p[scores={Nominated=1}] Roshambo matches 2 run summon text_display 167 97 1 {billboard:"vertical",alignment:"center",Tags:["roshambo","result_roshambo"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},text:'[{"selector":"@p[scores={Nominator=1}]"},{"color":"gold","text":" wins!"}]',background:-16777216}

# Nominated wins

execute if score @p[scores={Nominated=1}] Roshambo matches 1 if score @p[scores={Nominator=1}] Roshambo matches 3 run summon text_display 167 97 1 {billboard:"vertical",alignment:"center",Tags:["roshambo","result_roshambo"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},text:'[{"selector":"@p[scores={Nominated=1}]"},{"color":"gold","text":" wins!"}]',background:-16777216}
execute if score @p[scores={Nominated=1}] Roshambo matches 2 if score @p[scores={Nominator=1}] Roshambo matches 1 run summon text_display 167 97 1 {billboard:"vertical",alignment:"center",Tags:["roshambo","result_roshambo"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},text:'[{"selector":"@p[scores={Nominated=1}]"},{"color":"gold","text":" wins!"}]',background:-16777216}
execute if score @p[scores={Nominated=1}] Roshambo matches 3 if score @p[scores={Nominator=1}] Roshambo matches 2 run summon text_display 167 97 1 {billboard:"vertical",alignment:"center",Tags:["roshambo","result_roshambo"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},text:'[{"selector":"@p[scores={Nominated=1}]"},{"color":"gold","text":" wins!"}]',background:-16777216}

