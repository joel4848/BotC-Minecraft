
data modify entity @e[tag=nominator_roshambo,limit=1] text set value '[{"color":"blue","selector":"@a[scores={Nominator=1}]"},{"color":"blue","text":" chose:"},{"text":"\\n Scissors"}]'

data modify entity @e[tag=nominated_roshambo,limit=1] text set value '[{"color":"red","selector":"@a[scores={Nominated=1}]"},{"color":"red","text":" chose:"},{"text":"\\n Scissors"}]'
