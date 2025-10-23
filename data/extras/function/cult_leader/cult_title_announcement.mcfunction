# Announce nominated player

title @a actionbar {"text":"","extra":[{"selector":"@a[scores={Nominated=1}]","color":"gold"},{"text":" is starting a cult! Who wants to join?","color":"light_purple"}]}

execute if score #player_currently_nominated temp matches 1 run schedule function extras:cult_leader/cult_title_announcement 1t replace