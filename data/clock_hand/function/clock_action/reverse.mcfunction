
data modify storage joelbotc big_hand_speed set value 20

function clock_hand:big_hand/call_rotate/call_rotate_to_16
schedule function clock_hand:big_hand/call_rotate/call_rotate_to_15 1s
schedule function clock_hand:big_hand/call_rotate/call_rotate_to_14 2s
schedule function clock_hand:big_hand/call_rotate/call_rotate_to_13 3s
schedule function clock_hand:big_hand/call_rotate/call_rotate_to_12 4s
schedule function clock_hand:big_hand/call_rotate/call_rotate_to_11 5s
schedule function clock_hand:big_hand/call_rotate/call_rotate_to_10 6s
schedule function clock_hand:big_hand/call_rotate/call_rotate_to_9 7s
schedule function clock_hand:big_hand/call_rotate/call_rotate_to_8 8s
schedule function clock_hand:big_hand/call_rotate/call_rotate_to_7 9s
schedule function clock_hand:big_hand/call_rotate/call_rotate_to_6 10s
schedule function clock_hand:big_hand/call_rotate/call_rotate_to_5 11s
schedule function clock_hand:big_hand/call_rotate/call_rotate_to_4 12s
schedule function clock_hand:big_hand/call_rotate/call_rotate_to_3 13s
schedule function clock_hand:big_hand/call_rotate/call_rotate_to_2 14s
schedule function clock_hand:big_hand/call_rotate/call_rotate_to_1 15s

schedule function clock_hand:clock_action/reverse 16s