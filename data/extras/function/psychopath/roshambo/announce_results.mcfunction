scoreboard players set #cycle_roshambo_choices temp 0
schedule clear extras:psychopath/roshambo/cycle_choices

# Announce Nominator's choice

execute if score @a[scores={Nominator=1},limit=1] Roshambo matches 1 run data modify entity @e[tag=nominator_roshambo,limit=1] text set value '[{"color":"blue","selector":"@a[scores={Nominator=1}]"},{"color":"blue","text":" chose:"},{"text":"\\n Rock"}]'
execute if score @a[scores={Nominator=1},limit=1] Roshambo matches 2 run data modify entity @e[tag=nominator_roshambo,limit=1] text set value '[{"color":"blue","selector":"@a[scores={Nominator=1}]"},{"color":"blue","text":" chose:"},{"text":"\\n Paper"}]'
execute if score @a[scores={Nominator=1},limit=1] Roshambo matches 3 run data modify entity @e[tag=nominator_roshambo,limit=1] text set value '[{"color":"blue","selector":"@a[scores={Nominator=1}]"},{"color":"blue","text":" chose:"},{"text":"\\n Scissors"}]'

# Announce Marked's choice

execute if score @a[scores={Marked=1},limit=1] Roshambo matches 1 run data modify entity @e[tag=marked_roshambo,limit=1] text set value '[{"color":"red","selector":"@a[scores={Marked=1}]"},{"color":"red","text":" chose:"},{"text":"\\n Rock"}]'
execute if score @a[scores={Marked=1},limit=1] Roshambo matches 2 run data modify entity @e[tag=marked_roshambo,limit=1] text set value '[{"color":"red","selector":"@a[scores={Marked=1}]"},{"color":"red","text":" chose:"},{"text":"\\n Paper"}]'
execute if score @a[scores={Marked=1},limit=1] Roshambo matches 3 run data modify entity @e[tag=marked_roshambo,limit=1] text set value '[{"color":"red","selector":"@a[scores={Marked=1}]"},{"color":"red","text":" chose:"},{"text":"\\n Scissors"}]'

# Announce result

# Tie

execute if score @a[scores={Marked=1},limit=1] Roshambo = @a[scores={Nominator=1},limit=1] Roshambo run summon text_display 167 97 1 {billboard:"vertical",alignment:"center",Tags:["roshambo","result_roshambo"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5f,5f,5f]},text:'{"color":"gold","text":"It\'s a tie!"}',background:-16777216}
execute if score @a[scores={Marked=1},limit=1] Roshambo = @a[scores={Nominator=1},limit=1] Roshambo run function execution:clear_mark

# Nominator wins

execute if score @a[scores={Nominator=1},limit=1] Roshambo matches 1 if score @a[scores={Marked=1},limit=1] Roshambo matches 3 run summon text_display 167 97 1 {billboard:"vertical",alignment:"center",Tags:["roshambo","result_roshambo"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},text:'[{"selector":"@a[scores={Nominator=1},limit=1]"},{"color":"gold","text":" wins!"}]',background:-16777216}
execute if score @a[scores={Nominator=1},limit=1] Roshambo matches 2 if score @a[scores={Marked=1},limit=1] Roshambo matches 1 run summon text_display 167 97 1 {billboard:"vertical",alignment:"center",Tags:["roshambo","result_roshambo"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},text:'[{"selector":"@a[scores={Nominator=1},limit=1]"},{"color":"gold","text":" wins!"}]',background:-16777216}
execute if score @a[scores={Nominator=1},limit=1] Roshambo matches 3 if score @a[scores={Marked=1},limit=1] Roshambo matches 2 run summon text_display 167 97 1 {billboard:"vertical",alignment:"center",Tags:["roshambo","result_roshambo"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},text:'[{"selector":"@a[scores={Nominator=1},limit=1]"},{"color":"gold","text":" wins!"}]',background:-16777216}

# Marked wins

execute if score @a[scores={Marked=1},limit=1] Roshambo matches 1 if score @a[scores={Nominator=1},limit=1] Roshambo matches 3 run summon text_display 167 97 1 {billboard:"vertical",alignment:"center",Tags:["roshambo","result_roshambo"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},text:'[{"selector":"@a[scores={Marked=1},limit=1]"},{"color":"gold","text":" wins!"}]',background:-16777216}
execute if score @a[scores={Marked=1},limit=1] Roshambo matches 2 if score @a[scores={Nominator=1},limit=1] Roshambo matches 1 run summon text_display 167 97 1 {billboard:"vertical",alignment:"center",Tags:["roshambo","result_roshambo"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},text:'[{"selector":"@a[scores={Marked=1},limit=1]"},{"color":"gold","text":" wins!"}]',background:-16777216}
execute if score @a[scores={Marked=1},limit=1] Roshambo matches 3 if score @a[scores={Nominator=1},limit=1] Roshambo matches 2 run summon text_display 167 97 1 {billboard:"vertical",alignment:"center",Tags:["roshambo","result_roshambo"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},text:'[{"selector":"@a[scores={Marked=1},limit=1]"},{"color":"gold","text":" wins!"}]',background:-16777216}

execute if score @a[scores={Marked=1},limit=1] Roshambo matches 1 if score @a[scores={Nominator=1},limit=1] Roshambo matches 3 run function execution:clear_mark
execute if score @a[scores={Marked=1},limit=1] Roshambo matches 2 if score @a[scores={Nominator=1},limit=1] Roshambo matches 1 run function execution:clear_mark
execute if score @a[scores={Marked=1},limit=1] Roshambo matches 3 if score @a[scores={Nominator=1},limit=1] Roshambo matches 2 run function execution:clear_mark


tellraw @a[scores={Storyteller=1}] [{"color":"light_purple","text":"Click here to clear the Roshambo setup & return the Roshamboists to their seats: ["},{"clickEvent":{"action":"run_command","value":"/function extras:psychopath/roshambo/clear"},"color":"gold","text":"Clear Roshambo","underlined":true},{"color":"light_purple","text":"]"}]
