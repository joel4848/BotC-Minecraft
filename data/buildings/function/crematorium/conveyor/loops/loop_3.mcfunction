


function buildings:crematorium/conveyor/move_conveyor_3

schedule function buildings:crematorium/call_eating_sound 165t append

schedule function buildings:crematorium/conveyor/kill_conveyor_3 240t

schedule function buildings:crematorium/conveyor/summon_conveyor_3 270t





execute unless score #crematorium_conveyor_running temp matches 0 run schedule function buildings:crematorium/conveyor/loops/loop_3 296t
