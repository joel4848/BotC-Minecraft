scoreboard players set @a Nominated 0
team empty Nominated
scoreboard players set #storyteller Player -17
scoreboard players set #storyteller Nominated 1
effect give @a[scores={Storyteller=1}] glowing infinite 99 true

function voting:reset_vote

function nomination:announce_required_votes

function nomination:nominated_particles