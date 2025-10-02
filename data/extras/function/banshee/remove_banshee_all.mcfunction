data modify block 162 106 41 front_text.messages[0] set value '{"text":""}'
data modify block 162 106 41 front_text.messages[1] set value '{"text":""}'
data modify block 162 106 41 front_text.messages[2] set value '{"text":""}'
data modify block 162 106 41 front_text.messages[3] set value '{"text":""}'

schedule function extras:banshee/update_banshee_0_username 1t
schedule function extras:banshee/update_banshee_1_username 1t
schedule function extras:banshee/update_banshee_2_username 1t
schedule function extras:banshee/update_banshee_3_username 1t
schedule function extras:banshee/call_update_fmvs 10t