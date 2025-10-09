scoreboard players set #og_enabled temp 0
schedule function extras:organ_grinder/og_remove_votelights 2t
schedule function extras:organ_grinder/og_remove_blocks 5t

function extras:organ_grinder/hide_ghost_votes/set_scores

function extras:organ_grinder/hide_ghost_votes/set_unhide_stacks

execute as @a run fmvariable set og_enabled false false

# Unsilence votelight interactions

execute if score #og_enabled temp matches 1 run scoreboard players set #og_silence_votelights temp 0

# Clear questionmark block displays