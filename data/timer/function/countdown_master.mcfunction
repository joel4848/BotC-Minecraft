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
