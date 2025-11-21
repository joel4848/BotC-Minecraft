
bossbar set minecraft:timerbar color green
bossbar set minecraft:timerbar visible true
scoreboard players set TimerEntity TimerPaused 0
scoreboard players set TimerEntity TickTimer 0
function timer:countdown_timer
schedule function timer:countdown_bossbar 1t

function teleport:booth/request/place
advancement revoke @a only teleport:summon_st_interact
scoreboard players set @a[scores={SummonSTInteracted=1}] SummonSTInteracted 0
scoreboard players set @a[scores={SummonSTConfirmed=1}] SummonSTInteracted 0

# Clear ST booth request pending score
scoreboard players set #summon_st_pending temp 0

# Summon discussion room occupancy text display

scoreboard players set #show_discussion_room_occupancy temp 1
function buildings:discussion_room_occupation/text_display_process