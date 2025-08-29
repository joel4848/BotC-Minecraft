scoreboard players set @a Wheee 0

function timer:discussion_end_bell

title @a title {"text":""}
title @a subtitle [{"text":"Execution time!","color":"red"}]

scoreboard players set #execution_running temp 1

effect give @a[scores={Marked=1}] slow_falling 25 99 true

function execution:dumb/lock_to_seats

schedule function execution:dumb/build_dumb 2s

schedule function execution:dumb/chicken_summoner 5s

schedule function execution:dumb/tp_marked 7s

schedule function execution:dumb/goodbye 9s

schedule function execution:dumb/kill_chickens 11s

schedule function execution:dumb/destroy_dumb 17s

schedule function execution:finish_execution 15s

schedule function execution:dumb/tp_executed_to_seat_1 18s

# schedule function execution:dumb/tp_executed_to_seat_2 381t
