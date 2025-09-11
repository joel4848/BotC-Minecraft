data modify storage joelbotc banshee_number set value 1

function extras:banshee/extract_username with storage joelbotc

data modify block 161 106 41 front_text.messages[1] set value '{"nbt":"banshee_1_username","storage":"joelbotc"}'

function extras:banshee/update_fmv_b1u with storage minecraft:joelbotc