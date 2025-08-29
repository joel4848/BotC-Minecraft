bossbar set minecraft:timerbar color green
bossbar set minecraft:timerbar visible true
scoreboard players set TimerEntity TimerPaused 0
scoreboard players set TimerEntity TickTimer 0
function timer:countdown_timer
schedule function timer:countdown_bossbar 1t