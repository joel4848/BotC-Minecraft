# Final extraction function - gets the username substring
# Called when we've found the position of the closing quote

# Extract the username using the length we found
execute store result storage temp:parse final_length int 1 run scoreboard players get username_length temp
function players:usernames/extract_username/extract_substring with storage temp:parse

# Store the result in a more permanent location
$data modify storage joelbotc player_$(player_seat_number)_username set value ' '
$data modify storage joelbotc player_$(player_seat_number)_username set from storage temp:parse extracted_username

$data modify block $(raw_username_sign_pos) front_text.messages[$(username_sign_line)] set from storage temp:parse extracted_username

# Optional: Display success message
# $tellraw @a [{"text":"Extracted username: ","color":"green"},{"storage":"joelbotc","nbt":"banshee_$(banshee_number)_username","color":"yellow"}]

# Clean up temporary storage
data remove storage temp:parse json_string
data remove storage temp:parse after_prefix
data remove storage temp:parse current_pos
data remove storage temp:parse test_char
data remove storage temp:parse quote_test
data remove storage temp:parse final_length
data remove storage temp:parse extracted_username