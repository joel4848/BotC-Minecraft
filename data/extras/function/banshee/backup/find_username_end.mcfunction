# Recursive function to find where the username ends (at the first quote)
# This checks each character position until it finds a quote

# Check if we've reached the maximum username length (16 characters)
execute if score username_length temp matches 17.. run return fail

# Set username + 2 to properly extract single character
scoreboard players operation username_length_plus_1 temp = username_length temp
scoreboard players add username_length_plus_1 temp 1

# Get the character at the current position
execute store result storage temp:parse current_pos int 1 run scoreboard players get username_length temp
execute store result storage temp:parse current_pos_plus_1 int 1 run scoreboard players get username_length_plus_1 temp
function extras:banshee/get_char_at_pos with storage temp:parse

# Check if this character is a quote (ASCII 34)
# We do this by trying to modify with a quote and seeing if it changes
data modify storage temp:parse quote_test set value '"'
execute store success score is_quote temp run data modify storage temp:parse quote_test set from storage temp:parse test_char

# If it's a quote (no change = success score 0), extract the username
execute if score is_quote temp matches 0 run function extras:banshee/extract_final_username

# If it's not a quote, increment length and try next position
execute unless score is_quote temp matches 0 run scoreboard players add username_length temp 1
execute unless score is_quote temp matches 0 run function extras:banshee/find_username_end