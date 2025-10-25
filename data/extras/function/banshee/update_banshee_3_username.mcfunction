data modify storage joelbotc banshee_number set value 3

function extras:banshee/extract_username with storage joelbotc

data modify block 168 87 37 front_text.messages[3] set value '{"nbt":"banshee_3_username","storage":"joelbotc"}'

function extras:banshee/update_fmv_b3u with storage minecraft:joelbotc