# call with timer:set {minutes:%d,seconds:%d}

$scoreboard players set TimerEntity TimerMinutes $(minutes)
$scoreboard players set TimerEntity TimerSeconds $(seconds)

$scoreboard players set #minutes_to_add temp $(minutes)
$scoreboard players set #seconds_to_add temp $(seconds)
scoreboard players operation #minutes_to_add temp *= #ticks_per_minute temp
scoreboard players operation #seconds_to_add temp *= #ticks_per_second temp
scoreboard players operation #time_to_add temp = #minutes_to_add temp
scoreboard players operation #time_to_add temp += #seconds_to_add temp

scoreboard players set TimerEntity TimerPaused 0
scoreboard players operation TimerEntity TimerMax = #time_to_add temp
scoreboard players operation TimerEntity TimerScore = #time_to_add temp

execute store result bossbar timerbar max run scoreboard players get #time_to_add temp
execute store result bossbar timerbar value run scoreboard players get #time_to_add temp

bossbar set timerbar name [ \
    "", \
    {"score": { \
        "name": "TimerEntity", \
        "objective": "TimerMinutes" \
    }}, \
    { \
        "text": ":0" \
    }, \
    {"score": { \
        "name": "TimerEntity", \
        "objective": "TimerSeconds" \
    }} \
]

bossbar set timerbar players @a
function timer:countdown_master
gamerule doDaylightCycle true