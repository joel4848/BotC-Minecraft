data modify block 168 84 32 front_text.messages[2] set value '{"selector":"@a[scores={Player=-15}]"}'

data modify storage joelbotc player_seat_number set value 15
data modify storage joelbotc username_sign_pos set value '168 84 32'
data modify storage joelbotc username_sign_line set value 2
data modify storage joelbotc raw_username_sign_pos set value '168 84 33'

function players:usernames/extract_username/extract_username with storage joelbotc