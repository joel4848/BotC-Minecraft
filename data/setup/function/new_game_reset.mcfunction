scoreboard objectives remove Alive
scoreboard objectives add Alive dummy
scoreboard objectives remove Player
scoreboard objectives add Player dummy
scoreboard objectives setdisplay sidebar Player
team leave @a[team=!Storyteller]

# Clone chests

function setup:clonechests

# Revive everyone

function players:kill_revive/revive_all

# Make nametags visible

team modify Alive nametagVisibility always
team modify Dead nametagVisibility always
team modify Storyteller nametagVisibility always

# Reset vote lights & seat buttons

function setup:place_buttons
function voting:reset_vote_full
schedule function setup:replace_votelights 5t replace

# Clear GhostVoteUsed scoreboards

scoreboard objectives remove GhostVoteUsedMaster
scoreboard objectives add GhostVoteUsedMaster dummy

scoreboard objectives remove GhostVoteUsedToday
scoreboard objectives add GhostVoteUsedToday dummy

scoreboard objectives remove GhostVoteUnusedToday
scoreboard objectives add GhostVoteUnusedToday dummy