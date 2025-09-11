# Macro function to extract substring from 0 to final_length
# Called with storage temp:parse containing final_length

$data modify storage temp:parse extracted_username set string storage temp:parse after_prefix 0 $(final_length)