# Final extraction function - gets the username substring
# Called when we've found the position of the closing quote

# Extract the username using the length we found
execute store result storage temp:parse final_length int 1 run scoreboard players get username_length temp
function extras:banshee/extract_substring with storage temp:parse

# Store the result in a more permanent location
data modify storage joelbotc testname set from storage temp:parse extracted_username

# Optional: Display success message
tellraw @a [{"text":"Extracted username: ","color":"green"},{"storage":"joelbotc","nbt":"testname","color":"yellow"}]

# Clean up temporary storage
data remove storage temp:parse json_string
data remove storage temp:parse after_prefix
data remove storage temp:parse current_pos
data remove storage temp:parse test_char
data remove storage temp:parse quote_test
data remove storage temp:parse final_length
data remove storage temp:parse extracted_username