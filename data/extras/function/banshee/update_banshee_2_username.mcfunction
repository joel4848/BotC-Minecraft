data modify storage joelbotc banshee_number set value 2

function extras:banshee/extract_username with storage joelbotc

data modify block 176 87 0 front_text.messages[2] set value '{"nbt":"banshee_2_username","storage":"joelbotc"}'

function extras:banshee/update_fmv_b2u with storage minecraft:joelbotc