data modify block 171 87 0 front_text.messages[1] set value '{"selector":"@a[scores={Player=-2}]"}'

data modify storage joelbotc player_seat_number set value 2
data modify storage joelbotc username_sign_pos set value '171 87 0'
data modify storage joelbotc username_sign_line set value 1
data modify storage joelbotc raw_username_sign_pos set value '172 87 0'

function players:usernames/extract_username/extract_username with storage joelbotc