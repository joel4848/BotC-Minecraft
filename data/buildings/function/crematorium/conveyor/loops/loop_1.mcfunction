


function buildings:crematorium/conveyor/move_conveyor_1

schedule function buildings:crematorium/call_eating_sound 165t append

schedule function buildings:crematorium/conveyor/kill_conveyor_1 240t

schedule function buildings:crematorium/conveyor/summon_conveyor_1 270t





execute unless score #crematorium_conveyor_running temp matches 0 run schedule function buildings:crematorium/conveyor/loops/loop_1 296t
