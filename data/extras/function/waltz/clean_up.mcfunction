# Clean up temporary scoreboards

scoreboard objectives remove WaltzTemp
scoreboard objectives remove WaltzNewSeat

# Teleport players to new seats

function teleport:tp_all_to_seats

# Remove old compasses and enable new compass to be given when day ended

clear @a compass

scoreboard players set #compasses_given temp 0