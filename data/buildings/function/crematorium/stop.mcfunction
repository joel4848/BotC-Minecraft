
scoreboard players set #crematorium_running temp 0
scoreboard players set #crematorium_conveyor_running temp 0

schedule clear buildings:crematorium/conveyor/loops/loop_1
schedule clear buildings:crematorium/conveyor/loops/loop_2
schedule clear buildings:crematorium/conveyor/loops/loop_3
schedule clear buildings:crematorium/conveyor/loops/loop_4

function buildings:crematorium/conveyor/kill_all
function buildings:crematorium/crusher_top/_/delete
function buildings:crematorium/crusher_top/_/stop_anim
function buildings:crematorium/crusher_bottom/_/delete
function buildings:crematorium/crusher_bottom/_/stop_anim
