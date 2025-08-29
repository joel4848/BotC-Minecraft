scoreboard players set TimerEntity TimerPaused 0
bossbar set minecraft:timerbar max 12000
scoreboard players set TimerEntity TimerMax 12000
execute store result bossbar minecraft:timerbar value run scoreboard players set TimerEntity TimerScore 12000
scoreboard players set TimerEntity TimerMinutes 10
scoreboard players set TimerEntity TimerSeconds 0
bossbar set minecraft:timerbar name ["",{"score":{"name":"TimerEntity","objective":"TimerMinutes"}},{"text":":0"},{"score":{"name":"TimerEntity","objective":"TimerSeconds"}}]
bossbar set minecraft:timerbar players
bossbar set minecraft:timerbar players @a
function timer:countdown_master
gamerule doDaylightCycle true