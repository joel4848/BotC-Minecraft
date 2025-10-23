# Main function to extract username from sign
# Call this function to start the extraction process

# Copy the JSON string from the sign

data modify storage temp:parse json_string set from block 175 87 0 front_text.messages[2]

# Remove the first 57 characters: {"clickEvent":{"action":"suggest_command","value":"/tell 

data modify storage temp:parse after_prefix set string storage temp:parse json_string 57

# Initialize the search for the closing quote

scoreboard players set username_length temp 1
function extras:banshee/find_username_end