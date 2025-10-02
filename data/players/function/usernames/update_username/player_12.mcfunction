data modify block 171 85 0 front_text.messages[3] set value '{"selector":"@a[scores={Player=-12}]"}'

data modify storage joelbotc player_seat_number set value 12
data modify storage joelbotc username_sign_pos set value '171 85 0'
data modify storage joelbotc username_sign_line set value 3
data modify storage joelbotc raw_username_sign_pos set value '172 85 0'

function players:usernames/extract_username/extract_username with storage joelbotc