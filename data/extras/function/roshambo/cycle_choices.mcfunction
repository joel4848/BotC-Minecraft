
function extras:roshambo/cycle_rock

schedule function extras:roshambo/cycle_paper 2t

schedule function extras:roshambo/cycle_scissors 4t

execute if score #cycle_roshambo_choices temp matches 1 run schedule function extras:roshambo/cycle_choices 6t replace

