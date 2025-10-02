# call with timer:add {minutes:%d,seconds:%d}

$scoreboard players set #minutes_to_add temp $(minutes)
$scoreboard players set #seconds_to_add temp $(seconds)
scoreboard players operation #minutes_to_add temp *= #ticks_per_minute temp
scoreboard players operation #seconds_to_add temp *= #ticks_per_second temp
scoreboard players operation #time_to_add temp = #minutes_to_add temp
scoreboard players operation #time_to_add temp += #seconds_to_add temp

execute store result bossbar timerbar value run scoreboard players operation TimerEntity TimerScore += #time_to_add temp
$scoreboard players add TimerEntity TimerMinutes $(minutes)
execute store result score TimerEntity TimerMaxCheck run bossbar get timerbar max
execute if score TimerEntity TimerScore > TimerEntity TimerMaxCheck store result bossbar timerbar max run scoreboard players get TimerEntity TimerScore