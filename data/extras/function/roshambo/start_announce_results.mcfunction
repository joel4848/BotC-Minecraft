scoreboard players set #running Roshambo 0
schedule clear extras:roshambo/tick_change_signs

# Announce Nominator's choice

summon text_display 167 100.5 1 {billboard:"vertical",alignment:"center",Tags:["roshambo","nominator_roshambo"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'[{"color":"blue","selector":"@a[scores={Nominator=1}]"},{"color":"blue","text":" chose:"},{"text":"\\n "}]',background:-16777216}

# Announce Nominated's choice

summon text_display 167 99 1 {billboard:"vertical",alignment:"center",Tags:["roshambo","nominated_roshambo"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'[{"color":"red","selector":"@a[scores={Nominated=1}]"},{"color":"red","text":" chose:"},{"text":"\\n "}]',background:-16777216}

# Start cycle

scoreboard players set #cycle_roshambo_choices temp 1

schedule function extras:roshambo/cycle_choices 5t

# Announce results

schedule function extras:roshambo/announce_results 4s

