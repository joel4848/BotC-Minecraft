


function buildings:crematorium/conveyor/move_conveyor_2

# schedule function buildings:crematorium/call_eating_sound 165t append

schedule function buildings:crematorium/conveyor/kill_conveyor_2 240t

schedule function buildings:crematorium/conveyor/summon_conveyor_2 270t





execute unless score #crematorium_conveyor_running temp matches 0 run schedule function buildings:crematorium/conveyor/loops/loop_2 296t
