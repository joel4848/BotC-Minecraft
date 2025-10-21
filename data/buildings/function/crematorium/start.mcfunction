
function buildings:crematorium/conveyor/kill_all
function buildings:crematorium/crusher_top/_/delete
function buildings:crematorium/crusher_top/_/stop_anim
function buildings:crematorium/crusher_bottom/_/delete
function buildings:crematorium/crusher_bottom/_/stop_anim

scoreboard players set #crematorium_running temp 1
scoreboard players set #crematorium_conveyor_running temp 1

function buildings:crematorium/conveyor/summon_conveyor_1
function buildings:crematorium/conveyor/summon_conveyor_2
function buildings:crematorium/conveyor/summon_conveyor_3
function buildings:crematorium/conveyor/summon_conveyor_4

schedule function buildings:crematorium/conveyor/loops/loop_1 10t

schedule function buildings:crematorium/conveyor/loops/loop_2 84t

schedule function buildings:crematorium/conveyor/loops/loop_3 158t

schedule function buildings:crematorium/conveyor/loops/loop_4 232t

schedule function buildings:crematorium/summon_crushers 10t

schedule function buildings:crematorium/crusher_bottom/a/crusher_rotate_bottom/play_anim_loop 20t

schedule function buildings:crematorium/crusher_top/a/crusher_rotate_top/play_anim_loop 20t

function buildings:crematorium/conveyor/move_players

function buildings:crematorium/conveyor/crush_players

