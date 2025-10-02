# Countdown timer functions

execute if score TimerEntity TickTimer matches 20 run scoreboard players remove TimerEntity TimerSeconds 1
execute if score TimerEntity TimerSeconds matches ..-1 run scoreboard players remove TimerEntity TimerMinutes 1
execute if score TimerEntity TimerSeconds matches ..-1 run scoreboard players set TimerEntity TimerSeconds 59
execute if score TimerEntity TimerSeconds matches 10.. run bossbar set minecraft:timerbar name ["",{"score":{"name":"TimerEntity","objective":"TimerMinutes"}},{"text":":"},{"score":{"name":"TimerEntity","objective":"TimerSeconds"}}]
execute if score TimerEntity TimerSeconds matches ..9 run bossbar set minecraft:timerbar name ["",{"score":{"name":"TimerEntity","objective":"TimerMinutes"}},{"text":":0"},{"score":{"name":"TimerEntity","objective":"TimerSeconds"}}]

execute if score TimerEntity TimerMinutes matches 0 run execute if score TimerEntity TimerSeconds matches 0 run bossbar set minecraft:timerbar value 0
execute if score TimerEntity TimerMinutes matches 0 run execute if score TimerEntity TimerSeconds matches 0 run function timer:timer_end

# Repeat this function again unless the timer is at 0

execute unless score TimerEntity TimerPaused matches 1 run execute unless score TimerEntity TimerSeconds matches 0 run schedule function timer:countdown_timer 1t replace
execute unless score TimerEntity TimerPaused matches 1 run execute unless score TimerEntity TimerMinutes matches 0 run schedule function timer:countdown_timer 1t replace