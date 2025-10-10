data modify block 175 87 0 front_text.messages[0] set value '{"selector":"@a[scores={Player=-1}]"}'
data modify block 175 87 0 front_text.messages[1] set value '{"selector":"@a[scores={Player=-2}]"}'
data modify block 175 87 0 front_text.messages[2] set value '{"selector":"@a[scores={Player=-3}]"}'
data modify block 175 87 0 front_text.messages[3] set value '{"selector":"@a[scores={Player=-4}]"}'

schedule function extras:banshee/update_banshee_0_username 1t
schedule function extras:banshee/update_banshee_1_username 2t
schedule function extras:banshee/update_banshee_2_username 3t
schedule function extras:banshee/update_banshee_3_username 4t
# schedule function extras:banshee/update_sign 5t # this is pointing nowhere