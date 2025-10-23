data modify storage joelbotc banshee_number set value 0

function extras:banshee/extract_username with storage joelbotc

data modify block 176 87 0 front_text.messages[0] set value '{"nbt":"banshee_0_username","storage":"joelbotc"}'

function extras:banshee/update_fmv_b0u with storage minecraft:joelbotc