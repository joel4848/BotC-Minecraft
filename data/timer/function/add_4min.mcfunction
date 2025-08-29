execute store result bossbar minecraft:timerbar value run scoreboard players add TimerEntity TimerScore 4800
scoreboard players add TimerEntity TimerMinutes 4
execute store result score TimerEntity TimerMaxCheck run bossbar get minecraft:timerbar max
execute if score TimerEntity TimerScore > TimerEntity TimerMaxCheck store result bossbar minecraft:timerbar max run scoreboard players get TimerEntity TimerScore