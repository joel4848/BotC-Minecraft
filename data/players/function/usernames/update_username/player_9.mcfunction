data modify block 168 85 32 front_text.messages[0] set value '{"selector":"@a[scores={Player=-9}]"}'

data modify storage joelbotc player_seat_number set value 9
data modify storage joelbotc username_sign_pos set value '168 85 32'
data modify storage joelbotc username_sign_line set value 0
data modify storage joelbotc raw_username_sign_pos set value '168 85 33'

function players:usernames/extract_username/extract_username with storage joelbotc