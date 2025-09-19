# Macro function to get character at a specific position
# Called with storage temp:parse containing current_pos

$data modify storage temp:parse test_char set string storage temp:parse after_prefix $(current_pos) $(current_pos_plus_1)