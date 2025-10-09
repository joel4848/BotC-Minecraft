
# tellraw @a [{"color":"aqua","text":"Seen execution messages: "},{"color":"white","nbt":"seen_execution_messages","storage":"minecraft:joelbotc"}]

execute store result score #seen_execution_messages_amount temp run data get storage minecraft:joelbotc seen_execution_messages

# tellraw @a [{"color":"aqua","text":"#seen_execution_messages_amount: "},{"color":"white","score":{"name":"#seen_execution_messages_amount","objective":"temp"}}]

$execute if score #seen_execution_messages_amount temp matches $(execution_message_amount) run data remove storage minecraft:joelbotc seen_execution_messages

# Generate initial random number

scoreboard players set #unseen_message_found temp 0

$execute store result score #execution_message_number temp run random value 1..$(execution_message_amount)

# tellraw @a [{"color":"aqua","text":"#execution_message_number: "},{"color":"white","score":{"name":"#execution_message_number","objective":"temp"}}]

execute store result storage minecraft:joelbotc execution_message_number int 1 run scoreboard players get #execution_message_number temp

function execution:execution_messages/check_if_already_seen with storage joelbotc

# tellraw @a [{"color":"aqua","text":"#unseen_message_found: "},{"color":"white","score":{"name":"#unseen_message_found","objective":"temp"}}]

execute if score #unseen_message_found temp matches 1 run data modify storage minecraft:joelbotc seen_execution_messages append from storage minecraft:joelbotc execution_message_number

execute if score #unseen_message_found temp matches 1 run function execution:execution_messages/call_display_message

execute unless score #unseen_message_found temp matches 1 run function execution:execution_messages/find_unseen_message_number with storage minecraft:joelbotc

