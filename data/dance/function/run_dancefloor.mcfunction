# Increases timer
scoreboard players add dance dance_timer 1

# Only updates the dance floor each second
execute if score dance dance_timer matches 20 run function dance:update_floor
execute if score dance dance_timer matches 20 run scoreboard players set dance dance_timer 0