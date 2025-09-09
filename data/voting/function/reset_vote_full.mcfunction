# Completely resets all voting systems for the next day

# Replace votelight interactions

function voting:remove_votelight_interactions_all
function voting:summon_votelight_interactions

# Stop titlebar announcement of nominated player

scoreboard players set #player_currently_nominated temp 0

# Clear all nomination and marking scores
scoreboard players set @a Nominated 0
scoreboard players set @a Marked 0
scoreboard players set #has_anyone_been_marked temp 0

scoreboard players set #storyteller Nominated 0

# Clear all vote tallies from previous votes
scoreboard players reset @a VoteTally

# Move all players to correct team
team join Alive @a[scores={Alive=1}]
team join Dead @a[scores={Alive=0}]
team join Storyteller @a[scores={Storyteller=1}]

# Clear any glowing effects
effect clear @a glowing

# Clear temporary storage
data remove storage voting:temp nominated_player

# Clear all temporary scoreboard values
scoreboard players reset #vote_tally temp
scoreboard players reset #nominated temp
scoreboard players reset #start_player temp
scoreboard players reset #current_player temp
scoreboard players reset #current_seat temp
scoreboard players reset #seat temp
scoreboard players reset #player_count temp
scoreboard players reset #required_votes temp
scoreboard players reset #living_count temp
scoreboard players reset #highest_previous temp
scoreboard players reset #was_marked temp

# Run reset vote function

function voting:reset_vote

# Add used ghost votes to GhostVotesUsedMaster

execute as @e[tag=votelight1] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run execute as @a[scores={Player=-1}] run scoreboard players set @s GhostVoteUsedMaster 1
execute as @e[tag=votelight2] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run execute as @a[scores={Player=-2}] run scoreboard players set @s GhostVoteUsedMaster 1
execute as @e[tag=votelight3] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run execute as @a[scores={Player=-3}] run scoreboard players set @s GhostVoteUsedMaster 1
execute as @e[tag=votelight4] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run execute as @a[scores={Player=-4}] run scoreboard players set @s GhostVoteUsedMaster 1
execute as @e[tag=votelight5] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run execute as @a[scores={Player=-5}] run scoreboard players set @s GhostVoteUsedMaster 1
execute as @e[tag=votelight6] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run execute as @a[scores={Player=-6}] run scoreboard players set @s GhostVoteUsedMaster 1
execute as @e[tag=votelight7] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run execute as @a[scores={Player=-7}] run scoreboard players set @s GhostVoteUsedMaster 1
execute as @e[tag=votelight8] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run execute as @a[scores={Player=-8}] run scoreboard players set @s GhostVoteUsedMaster 1
execute as @e[tag=votelight9] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run execute as @a[scores={Player=-9}] run scoreboard players set @s GhostVoteUsedMaster 1
execute as @e[tag=votelight10] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run execute as @a[scores={Player=-10}] run scoreboard players set @s GhostVoteUsedMaster 1
execute as @e[tag=votelight11] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run execute as @a[scores={Player=-11}] run scoreboard players set @s GhostVoteUsedMaster 1
execute as @e[tag=votelight12] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run execute as @a[scores={Player=-12}] run scoreboard players set @s GhostVoteUsedMaster 1
execute as @e[tag=votelight13] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run execute as @a[scores={Player=-13}] run scoreboard players set @s GhostVoteUsedMaster 1
execute as @e[tag=votelight14] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run execute as @a[scores={Player=-14}] run scoreboard players set @s GhostVoteUsedMaster 1
execute as @e[tag=votelight15] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run execute as @a[scores={Player=-15}] run scoreboard players set @s GhostVoteUsedMaster 1
execute as @e[tag=votelight16] run execute at @s if block ~ ~-1 ~ reinforced_deepslate run execute as @a[scores={Player=-16}] run scoreboard players set @s GhostVoteUsedMaster 1

# Clear GhostVoteUsedToday and GhostVoteUnusedToday scoreboards

execute as @a[scores={Player=..0}] run scoreboard players set @s GhostVoteUsedToday 0
execute as @a[scores={Player=..0}] run scoreboard players set @s GhostVoteUnusedToday 0

# Disable OG mode

# function extras:organ_grinder/og_disable

scoreboard players set #HGV_enabled temp 0

# Reset pistons for all seats by placing redstone blocks

## ## execute as @e[tag=votelight1] run execute at @s run setblock ~ ~-3 ~ redstone_block
## ## execute as @e[tag=votelight2] run execute at @s run setblock ~ ~-3 ~ redstone_block
## ## execute as @e[tag=votelight3] run execute at @s run setblock ~ ~-3 ~ redstone_block
## ## execute as @e[tag=votelight4] run execute at @s run setblock ~ ~-3 ~ redstone_block
## ## execute as @e[tag=votelight5] run execute at @s run setblock ~ ~-3 ~ redstone_block
## ## execute as @e[tag=votelight6] run execute at @s run setblock ~ ~-3 ~ redstone_block
## ## execute as @e[tag=votelight7] run execute at @s run setblock ~ ~-3 ~ redstone_block
## ## execute as @e[tag=votelight8] run execute at @s run setblock ~ ~-3 ~ redstone_block
## ## execute as @e[tag=votelight9] run execute at @s run setblock ~ ~-3 ~ redstone_block
## ## execute as @e[tag=votelight10] run execute at @s run setblock ~ ~-3 ~ redstone_block
## ## execute as @e[tag=votelight11] run execute at @s run setblock ~ ~-3 ~ redstone_block
## ## execute as @e[tag=votelight12] run execute at @s run setblock ~ ~-3 ~ redstone_block
## ## execute as @e[tag=votelight13] run execute at @s run setblock ~ ~-3 ~ redstone_block
## ## execute as @e[tag=votelight14] run execute at @s run setblock ~ ~-3 ~ redstone_block
## ## execute as @e[tag=votelight15] run execute at @s run setblock ~ ~-3 ~ redstone_block
## ## execute as @e[tag=votelight16] run execute at @s run setblock ~ ~-3 ~ redstone_block

# Reset vote levers

# execute as @e[tag=votelight1] run execute at @s run setblock ~2 ~ ~ lever[powered=false,face=floor,facing=north]
# execute as @e[tag=votelight2] run execute at @s run setblock ~2 ~ ~ lever[powered=false,face=floor,facing=north]
# execute as @e[tag=votelight3] run execute at @s run setblock ~ ~ ~2 lever[powered=false,face=floor,facing=east]
# execute as @e[tag=votelight4] run execute at @s run setblock ~ ~ ~2 lever[powered=false,face=floor,facing=east]
# execute as @e[tag=votelight5] run execute at @s run setblock ~ ~ ~2 lever[powered=false,face=floor,facing=east]
# execute as @e[tag=votelight6] run execute at @s run setblock ~ ~ ~2 lever[powered=false,face=floor,facing=east]
# execute as @e[tag=votelight7] run execute at @s run setblock ~-2 ~ ~ lever[powered=false,face=floor,facing=south]
# execute as @e[tag=votelight8] run execute at @s run setblock ~-2 ~ ~ lever[powered=false,face=floor,facing=south]
# execute as @e[tag=votelight9] run execute at @s run setblock ~-2 ~ ~ lever[powered=false,face=floor,facing=south]
# execute as @e[tag=votelight10] run execute at @s run setblock ~-2 ~ ~ lever[powered=false,face=floor,facing=south]
# execute as @e[tag=votelight11] run execute at @s run setblock ~ ~ ~-2 lever[powered=false,face=floor,facing=west]
# execute as @e[tag=votelight12] run execute at @s run setblock ~ ~ ~-2 lever[powered=false,face=floor,facing=west]
# execute as @e[tag=votelight13] run execute at @s run setblock ~ ~ ~-2 lever[powered=false,face=floor,facing=west]
# execute as @e[tag=votelight14] run execute at @s run setblock ~ ~ ~-2 lever[powered=false,face=floor,facing=west]
# execute as @e[tag=votelight15] run execute at @s run setblock ~2 ~ ~ lever[powered=false,face=floor,facing=north]
# execute as @e[tag=votelight16] run execute at @s run setblock ~2 ~ ~ lever[powered=false,face=floor,facing=north]

# Reset redstone beneath levers

# execute as @e[tag=votelight1] run execute at @s run setblock ~2 ~-2 ~ redstone_wire[north=side,east=side,south=side,west=side]
# execute as @e[tag=votelight2] run execute at @s run setblock ~2 ~-2 ~ redstone_wire[north=side,east=side,south=side,west=side]
# execute as @e[tag=votelight3] run execute at @s run setblock ~ ~-2 ~2 redstone_wire[north=side,east=side,south=side,west=side]
# execute as @e[tag=votelight4] run execute at @s run setblock ~ ~-2 ~2 redstone_wire[north=side,east=side,south=side,west=side]
# execute as @e[tag=votelight5] run execute at @s run setblock ~ ~-2 ~2 redstone_wire[north=side,east=side,south=side,west=side]
# execute as @e[tag=votelight6] run execute at @s run setblock ~ ~-2 ~2 redstone_wire[north=side,east=side,south=side,west=side]
# execute as @e[tag=votelight7] run execute at @s run setblock ~-2 ~-2 ~ redstone_wire[north=side,east=side,south=side,west=side]
# execute as @e[tag=votelight8] run execute at @s run setblock ~-2 ~-2 ~ redstone_wire[north=side,east=side,south=side,west=side]
# execute as @e[tag=votelight9] run execute at @s run setblock ~-2 ~-2 ~ redstone_wire[north=side,east=side,south=side,west=side]
# execute as @e[tag=votelight10] run execute at @s run setblock ~-2 ~-2 ~ redstone_wire[north=side,east=side,south=side,west=side]
# execute as @e[tag=votelight11] run execute at @s run setblock ~ ~-2 ~-2 redstone_wire[north=side,east=side,south=side,west=side]
# execute as @e[tag=votelight12] run execute at @s run setblock ~ ~-2 ~-2 redstone_wire[north=side,east=side,south=side,west=side]
# execute as @e[tag=votelight13] run execute at @s run setblock ~ ~-2 ~-2 redstone_wire[north=side,east=side,south=side,west=side]
# execute as @e[tag=votelight14] run execute at @s run setblock ~ ~-2 ~-2 redstone_wire[north=side,east=side,south=side,west=side]
# execute as @e[tag=votelight15] run execute at @s run setblock ~2 ~-2 ~ redstone_wire[north=side,east=side,south=side,west=side]
# execute as @e[tag=votelight16] run execute at @s run setblock ~2 ~-2 ~ redstone_wire[north=side,east=side,south=side,west=side]

# kill @e[type=item,name="Redstone Dust"]

# Reset redstone torches beneath levers

# execute as @e[tag=votelight1] run execute at @s run setblock ~3 ~-2 ~ redstone_wall_torch[lit=true,facing=east]
# execute as @e[tag=votelight2] run execute at @s run setblock ~3 ~-2 ~ redstone_wall_torch[lit=true,facing=east]
# execute as @e[tag=votelight3] run execute at @s run setblock ~ ~-2 ~3 redstone_wall_torch[lit=true,facing=south]
# execute as @e[tag=votelight4] run execute at @s run setblock ~ ~-2 ~3 redstone_wall_torch[lit=true,facing=south]
# execute as @e[tag=votelight5] run execute at @s run setblock ~ ~-2 ~3 redstone_wall_torch[lit=true,facing=south]
# execute as @e[tag=votelight6] run execute at @s run setblock ~ ~-2 ~3 redstone_wall_torch[lit=true,facing=south]
# execute as @e[tag=votelight7] run execute at @s run setblock ~-3 ~-2 ~ redstone_wall_torch[lit=true,facing=west]
# execute as @e[tag=votelight8] run execute at @s run setblock ~-3 ~-2 ~ redstone_wall_torch[lit=true,facing=west]
# execute as @e[tag=votelight9] run execute at @s run setblock ~-3 ~-2 ~ redstone_wall_torch[lit=true,facing=west]
# execute as @e[tag=votelight10] run execute at @s run setblock ~-3 ~-2 ~ redstone_wall_torch[lit=true,facing=west]
# execute as @e[tag=votelight11] run execute at @s run setblock ~ ~-2 ~-3 redstone_wall_torch[lit=true,facing=north]
# execute as @e[tag=votelight12] run execute at @s run setblock ~ ~-2 ~-3 redstone_wall_torch[lit=true,facing=north]
# execute as @e[tag=votelight13] run execute at @s run setblock ~ ~-2 ~-3 redstone_wall_torch[lit=true,facing=north]
# execute as @e[tag=votelight14] run execute at @s run setblock ~ ~-2 ~-3 redstone_wall_torch[lit=true,facing=north]
# execute as @e[tag=votelight15] run execute at @s run setblock ~3 ~-2 ~ redstone_wall_torch[lit=true,facing=east]
# execute as @e[tag=votelight16] run execute at @s run setblock ~3 ~-2 ~ redstone_wall_torch[lit=true,facing=east]

# kill @e[type=item,name="Redstone Torch"]
# tellraw @a [{"text":"Voting system fully reset.","color":"yellow"}]

# Remove clock hands

function clock_hand:remove_hands