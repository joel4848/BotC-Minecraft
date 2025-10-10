scoreboard players enable @a RoshamboLocked
scoreboard players enable @a ConfirmRoshamboLock

### Marked ###

# Turn off lights

execute unless score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run execute unless block 183 99 2 red_concrete run fill 183 99 2 183 100 0 red_concrete

# Enable signs if player choice not locked in

execute if score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run execute as @a[scores={Nominator=1},limit=1] run trigger Roshambo add 0
execute if score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run execute as @a[scores={Marked=1},limit=1] run trigger Roshambo add 0
execute unless score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run scoreboard players enable @a[scores={Nominator=1},limit=1] Roshambo
execute unless score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run scoreboard players enable @a[scores={Marked=1},limit=1] Roshambo

# Instruction sign default content

execute unless score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run data modify block 184 99 2 front_text.messages[1] set value '{"text":"Click a sign"}'
execute unless score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run data modify block 184 99 2 front_text.messages[2] set value '{"text":"to choose!"}'
execute unless score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run data modify block 184 99 2 front_text.color set value white

# Lock-in sign default content

execute unless score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run data modify block 184 99 0 front_text.messages[1] set value '{"text":"Click here to lock"}'
execute unless score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run data modify block 184 99 0 front_text.messages[2] set value '{"text":"in your choice!","clickEvent":{"action":"run_command","value":"/trigger ConfirmRoshamboLock set 1"}}'
execute unless score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run data modify block 184 99 0 front_text.color set value white

# Rock Paper Scissors default content

execute unless score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 184 100 2 front_text.messages[1] set value '{"text":"Rock","clickEvent":{"action":"run_command","value":"/trigger Roshambo set 1"}}'
execute unless score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute if score @a[scores={Marked=1},limit=1] Roshambo matches 1 run data modify block 184 100 2 front_text.messages[2] set value '{"text":"Chosen!"}'
execute unless score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute if score @a[scores={Marked=1},limit=1] Roshambo matches 1 run data modify block 184 100 2 front_text.color set value green
execute unless score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Marked=1},limit=1] Roshambo matches 1 run data modify block 184 100 2 front_text.messages[2] set value '{"text":""}'
execute unless score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Marked=1},limit=1] Roshambo matches 1 run data modify block 184 100 2 front_text.color set value white

execute unless score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 184 100 1 front_text.messages[1] set value '{"text":"Paper","clickEvent":{"action":"run_command","value":"/trigger Roshambo set 2"}}'
execute unless score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute if score @a[scores={Marked=1},limit=1] Roshambo matches 2 run data modify block 184 100 1 front_text.messages[2] set value '{"text":"Chosen!"}'
execute unless score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute if score @a[scores={Marked=1},limit=1] Roshambo matches 2 run data modify block 184 100 1 front_text.color set value green
execute unless score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Marked=1},limit=1] Roshambo matches 2 run data modify block 184 100 1 front_text.messages[2] set value '{"text":""}'
execute unless score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Marked=1},limit=1] Roshambo matches 2 run data modify block 184 100 1 front_text.color set value white

execute unless score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 184 100 0 front_text.messages[1] set value '{"text":"Scissors","clickEvent":{"action":"run_command","value":"/trigger Roshambo set 3"}}'
execute unless score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute if score @a[scores={Marked=1},limit=1] Roshambo matches 3 run data modify block 184 100 0 front_text.messages[2] set value '{"text":"Chosen!"}'
execute unless score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute if score @a[scores={Marked=1},limit=1] Roshambo matches 3 run data modify block 184 100 0 front_text.color set value green
execute unless score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Marked=1},limit=1] Roshambo matches 3 run data modify block 184 100 0 front_text.messages[2] set value '{"text":""}'
execute unless score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Marked=1},limit=1] Roshambo matches 3 run data modify block 184 100 0 front_text.color set value white

## Confirm lock in choice

# RPS signs

execute if score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 184 100 2 front_text.messages[1] set value '{"text":"Are"}'
execute if score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 184 100 1 front_text.messages[1] set value '{"text":"You"}'
execute if score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 184 100 0 front_text.messages[1] set value '{"text":"Sure?"}'

execute if score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 184 100 2 front_text.messages[2] set value '{"text":""}'
execute if score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 184 100 1 front_text.messages[2] set value '{"text":""}'
execute if score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 184 100 0 front_text.messages[2] set value '{"text":""}'

execute if score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 184 100 2 front_text.color set value purple
execute if score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 184 100 1 front_text.color set value purple
execute if score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 184 100 0 front_text.color set value purple

# Instruction sign

execute if score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run data modify block 184 99 2 front_text.messages[1] set value '{"text":"YES","clickEvent":{"action":"run_command","value":"/trigger RoshamboLocked set 1"}}'
execute if score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run data modify block 184 99 2 front_text.messages[2] set value '{"text":"✓"}'
execute if score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run data modify block 184 99 2 front_text.color set value green

# Lock-in sign

execute if score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run data modify block 184 99 0 front_text.messages[1] set value '{"text":"NO","clickEvent":{"action":"run_command","value":"/trigger ConfirmRoshamboLock set 0"}}'
execute if score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run data modify block 184 99 0 front_text.messages[2] set value '{"text":"✕"}'
execute if score @a[scores={Marked=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run data modify block 184 99 0 front_text.color set value red

## Lock in choice confirmed

# # RPS signs
# 
# execute if score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run data modify block 184 100 2 front_text.color set value purple
# execute if score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run data modify block 184 100 1 front_text.color set value purple
# execute if score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run data modify block 184 100 0 front_text.color set value yellow
# 
# execute if score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run data modify block 184 100 2 front_text.messages[1] set value '{"text":"You"}'
# execute if score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run data modify block 184 100 1 front_text.messages[1] set value '{"text":"chose:"}'
# execute if score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run execute if score @a[scores={Marked=1},limit=1] Roshambo matches 1 run data modify block 184 100 0 front_text.messages[1] set value '{"text":"Rock!"}'
# execute if score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run execute if score @a[scores={Marked=1},limit=1] Roshambo matches 2 run data modify block 184 100 0 front_text.messages[1] set value '{"text":"Paper!"}'
# execute if score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run execute if score @a[scores={Marked=1},limit=1] Roshambo matches 3 run data modify block 184 100 0 front_text.messages[1] set value '{"text":"Scissors!"}'
# 
# # Instruction sign
# 
# execute if score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run data modify block 184 99 2 front_text.color set value green
# execute if score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run data modify block 184 99 2 front_text.messages[1] set value '{"text":"Good"}'
# execute if score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run data modify block 184 99 2 front_text.messages[2] set value '{"text":""}'
# 
# # Lock-in sign
# 
# execute if score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run data modify block 184 99 0 front_text.color set value green
# execute if score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run data modify block 184 99 0 front_text.messages[1] set value '{"text":"luck!"}'
# execute if score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run data modify block 184 99 0 front_text.messages[2] set value '{"text":""}'
# 
# # Turn on lights
# 
# execute if score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run execute unless block 183 99 2 waxed_copper_bulb[lit=true] run fill 183 99 2 183 100 0 waxed_copper_bulb[lit=true]

execute if score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run execute unless block 184 99 2 air run fill 184 99 2 184 100 0 air

execute if score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 run execute unless block 183 99 2 light_blue_stained_glass run fill 183 99 2 183 100 0 red_stained_glass

### Nominator ###

# Turn off lights

execute unless score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run execute unless block 151 99 0 light_blue_concrete run fill 151 99 0 151 100 2 light_blue_concrete

# Instruction sign default content

execute unless score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run data modify block 150 99 0 front_text.messages[1] set value '{"text":"Click a sign"}'
execute unless score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run data modify block 150 99 0 front_text.messages[2] set value '{"text":"to choose!"}'
execute unless score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run data modify block 150 99 0 front_text.color set value white

# Lock-in sign default content

execute unless score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run data modify block 150 99 2 front_text.messages[1] set value '{"text":"Click here to lock"}'
execute unless score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run data modify block 150 99 2 front_text.messages[2] set value '{"text":"in your choice!","clickEvent":{"action":"run_command","value":"/trigger ConfirmRoshamboLock set 1"}}'
execute unless score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run data modify block 150 99 2 front_text.color set value white

# Rock Paper Scissors default content

execute unless score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 150 100 0 front_text.messages[1] set value '{"text":"Rock","clickEvent":{"action":"run_command","value":"/trigger Roshambo set 1"}}'
execute unless score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute if score @a[scores={Nominator=1},limit=1] Roshambo matches 1 run data modify block 150 100 0 front_text.messages[2] set value '{"text":"Chosen!"}'
execute unless score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute if score @a[scores={Nominator=1},limit=1] Roshambo matches 1 run data modify block 150 100 0 front_text.color set value green
execute unless score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Nominator=1},limit=1] Roshambo matches 1 run data modify block 150 100 0 front_text.messages[2] set value '{"text":""}'
execute unless score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Nominator=1},limit=1] Roshambo matches 1 run data modify block 150 100 0 front_text.color set value white

execute unless score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 150 100 1 front_text.messages[1] set value '{"text":"Paper","clickEvent":{"action":"run_command","value":"/trigger Roshambo set 2"}}'
execute unless score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute if score @a[scores={Nominator=1},limit=1] Roshambo matches 2 run data modify block 150 100 1 front_text.messages[2] set value '{"text":"Chosen!"}'
execute unless score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute if score @a[scores={Nominator=1},limit=1] Roshambo matches 2 run data modify block 150 100 1 front_text.color set value green
execute unless score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Nominator=1},limit=1] Roshambo matches 2 run data modify block 150 100 1 front_text.messages[2] set value '{"text":""}'
execute unless score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Nominator=1},limit=1] Roshambo matches 2 run data modify block 150 100 1 front_text.color set value white

execute unless score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 150 100 2 front_text.messages[1] set value '{"text":"Scissors","clickEvent":{"action":"run_command","value":"/trigger Roshambo set 3"}}'
execute unless score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute if score @a[scores={Nominator=1},limit=1] Roshambo matches 3 run data modify block 150 100 2 front_text.messages[2] set value '{"text":"Chosen!"}'
execute unless score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute if score @a[scores={Nominator=1},limit=1] Roshambo matches 3 run data modify block 150 100 2 front_text.color set value green
execute unless score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Nominator=1},limit=1] Roshambo matches 3 run data modify block 150 100 2 front_text.messages[2] set value '{"text":""}'
execute unless score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Nominator=1},limit=1] Roshambo matches 3 run data modify block 150 100 2 front_text.color set value white

## Confirm lock in choice

# RPS signs

execute if score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 150 100 0 front_text.messages[1] set value '{"text":"Are"}'
execute if score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 150 100 1 front_text.messages[1] set value '{"text":"You"}'
execute if score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 150 100 2 front_text.messages[1] set value '{"text":"Sure?"}'

execute if score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 150 100 0 front_text.messages[2] set value '{"text":""}'
execute if score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 150 100 1 front_text.messages[2] set value '{"text":""}'
execute if score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 150 100 2 front_text.messages[2] set value '{"text":""}'

execute if score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 150 100 0 front_text.color set value purple
execute if score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 150 100 1 front_text.color set value purple
execute if score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run data modify block 150 100 2 front_text.color set value purple

# Instruction sign

execute if score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run data modify block 150 99 0 front_text.messages[1] set value '{"text":"YES","clickEvent":{"action":"run_command","value":"/trigger RoshamboLocked set 1"}}'
execute if score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run data modify block 150 99 0 front_text.messages[2] set value '{"text":"✓"}'
execute if score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run data modify block 150 99 0 front_text.color set value green

# Lock-in sign

execute if score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run data modify block 150 99 2 front_text.messages[1] set value '{"text":"NO","clickEvent":{"action":"run_command","value":"/trigger ConfirmRoshamboLock set 0"}}'
execute if score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run data modify block 150 99 2 front_text.messages[2] set value '{"text":"✕"}'
execute if score @a[scores={Nominator=1},limit=1] ConfirmRoshamboLock matches 1 run execute unless score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run data modify block 150 99 2 front_text.color set value red

## Lock in choice confirmed

# # RPS signs
# 
# execute if score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run data modify block 150 100 0 front_text.color set value purple
# execute if score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run data modify block 150 100 1 front_text.color set value purple
# execute if score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run data modify block 150 100 2 front_text.color set value yellow
# 
# execute if score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run data modify block 150 100 0 front_text.messages[1] set value '{"text":"You"}'
# execute if score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run data modify block 150 100 1 front_text.messages[1] set value '{"text":"chose:"}'
# execute if score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run execute if score @a[scores={Nominator=1},limit=1] Roshambo matches 1 run data modify block 150 100 2 front_text.messages[1] set value '{"text":"Rock!"}'
# execute if score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run execute if score @a[scores={Nominator=1},limit=1] Roshambo matches 2 run data modify block 150 100 2 front_text.messages[1] set value '{"text":"Paper!"}'
# execute if score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run execute if score @a[scores={Nominator=1},limit=1] Roshambo matches 3 run data modify block 150 100 2 front_text.messages[1] set value '{"text":"Scissors!"}'
# 
# # Instruction sign
# 
# execute if score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run data modify block 150 99 0 front_text.color set value green
# execute if score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run data modify block 150 99 0 front_text.messages[1] set value '{"text":"Good"}'
# execute if score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run data modify block 150 99 0 front_text.messages[2] set value '{"text":""}'
# 
# # Lock-in sign
# 
# execute if score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run data modify block 150 99 2 front_text.color set value green
# execute if score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run data modify block 150 99 2 front_text.messages[1] set value '{"text":"luck!"}'
# execute if score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run data modify block 150 99 2 front_text.messages[2] set value '{"text":""}'
# 
# # Turn on lights
# 
# execute if score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run execute unless block 151 99 0 waxed_copper_bulb[lit=true] run fill 151 99 0 151 100 2 waxed_copper_bulb[lit=true]

execute if score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run execute unless block 150 99 0 air run fill 150 99 0 150 100 2 air

execute if score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run execute unless block 151 99 0 light_blue_stained_glass run fill 151 99 0 151 100 2 light_blue_stained_glass

# Repeat if roshambo running

execute if score #running Roshambo matches 1 run schedule function extras:psychopath/roshambo/tick_change_signs 1t

execute unless score #roshambo_reveal_message_sent temp matches 1 run execute if score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 if score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run tellraw @a[scores={Storyteller=1}] [{"color":"light_purple","text":"Roshambo choices locked in! Click here to reveal the result: ["},{"clickEvent":{"action":"run_command","value":"/function extras:psychopath/roshambo/start_announce_results"},"color":"gold","text":"Reveal Result","underlined":true},{"color":"light_purple","text":"]"}]

execute if score @a[scores={Marked=1},limit=1] RoshamboLocked matches 1 if score @a[scores={Nominator=1},limit=1] RoshamboLocked matches 1 run scoreboard players set #roshambo_reveal_message_sent temp 1

