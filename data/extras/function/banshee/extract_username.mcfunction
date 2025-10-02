# Main function to extract username from sign
# Call this function to start the extraction process

# Copy the JSON string from the sign

data remove storage temp:parse json_string
$data modify storage temp:parse json_string set from block 162 106 41 front_text.messages[$(banshee_number)]

# Remove the first 57 characters: {"clickEvent":{"action":"suggest_command","value":"/tell 

data remove storage temp:parse after_prefix
data modify storage temp:parse after_prefix set string storage temp:parse json_string 57

# Initialize the search for the closing quote

scoreboard players set username_length temp 1
function extras:banshee/find_username_end