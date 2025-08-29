# Reduce visual bossbar score by 1
execute store result bossbar minecraft:timerbar value run scoreboard players remove TimerEntity TimerScore 1

# Repeat this function again unless the timer is at 0

# execute unless score TimerEntity TimerSeconds matches 0 run schedule function timer:countdown_bossbar 1t replace
# execute unless score TimerEntity TimerMinutes matches 0 run schedule function timer:countdown_bossbar 1t replace
execute unless score TimerEntity TimerPaused matches 1 run execute unless score TimerEntity TimerScore matches 0 run schedule function timer:countdown_bossbar 1t replace

# Setting TickTimer score

execute unless score TimerEntity TickTimer matches 21 run scoreboard players add TimerEntity TickTimer 1
execute if score TimerEntity TickTimer matches 21 run scoreboard players set TimerEntity TickTimer 1


# Setting time of day to match bossbar time elapsed

# Set bossbar colour depending on percentage

execute store result score TimerEntity TimerMaxCheck run bossbar get minecraft:timerbar max
execute store result score TimerEntity TimerPercent run scoreboard players get TimerEntity TimerScore
execute store result score TimerEntity TimerMax run bossbar get minecraft:timerbar max
scoreboard players operation TimerEntity TimerPercent *= #100 TimerPercent
scoreboard players operation TimerEntity TimerPercent /= TimerEntity TimerMaxCheck
execute if score TimerEntity TimerPercent matches 35..100 run bossbar set minecraft:timerbar color green
execute if score TimerEntity TimerPercent matches 15..34 run bossbar set minecraft:timerbar color yellow
execute if score TimerEntity TimerPercent matches 0..14 run bossbar set minecraft:timerbar color red

# Calculate 13000*y/x
scoreboard players set const_13000 TimerMaths 13000
scoreboard players operation temp_calc TimerMaths = TimerEntity TimerScore
scoreboard players operation temp_calc TimerMaths *= const_13000 TimerMaths
scoreboard players operation temp_calc TimerMaths /= TimerEntity TimerMax

# Calculate 13000 - (13000*y/x)
scoreboard players operation result TimerMaths = const_13000 TimerMaths
scoreboard players operation result TimerMaths -= temp_calc TimerMaths

# Debug

# tellraw @a [{"text":"TimerScore: "},{"score":{"name":"TimerEntity","objective":"TimerScore"}}]
# tellraw @a [{"text":"TimerMax: "},{"score":{"name":"TimerEntity","objective":"TimerMax"}}]
# tellraw @a [{"text":"Result: "},{"score":{"name":"result","objective":"TimerMaths"}}]
# execute store result score current_time TimerMaths run time query daytime
# tellraw @a [{"text":"Game Time: "},{"score":{"name":"current_time","objective":"TimerMaths"}}]

# Store result in storage
execute store result storage joelbotc timer_day_time int 1 run scoreboard players get result TimerMaths

# Use macro to set the time

function timer:set_time_from_storage with storage joelbotc

# Empty bossbar when timer is 0

#execute if score TimerEntity TimerMinutes matches 0 run execute if score TimerEntity TimerSeconds matches 0 run scoreboard players set TimerEntity TimerScore 0

# Display bossbar for all players

bossbar set minecraft:timerbar players @a