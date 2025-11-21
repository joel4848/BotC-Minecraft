scoreboard players set TimerEntity TimerPaused 1
function timer:hide_bossbar

#scoreboard players set TimerEntity TimerMinutes 0
#scoreboard players set TimerEntity TimerSeconds 1

bossbar set minecraft:timerbar value 1

function teleport:booth/request/remove
scoreboard players set #summon_st_confirm_title temp 0
schedule clear teleport:booth/request/summon_await_confirm
title @a times 20t 60t 20t

# Remove discussion room occupancy text display

schedule clear buildings:discussion_room_occupation/text_display_process
scoreboard players set #show_discussion_room_occupancy temp 0
schedule function buildings:discussion_room_occupation/kill_both 5t
