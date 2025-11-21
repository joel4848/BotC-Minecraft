

function buildings:discussion_room_occupation/call_1

schedule function buildings:discussion_room_occupation/kill_2 1t

schedule function buildings:discussion_room_occupation/call_2 2t

schedule function buildings:discussion_room_occupation/kill_1 3t


execute if score #show_discussion_room_occupancy temp matches 1 run schedule function buildings:discussion_room_occupation/text_display_process 4t