# Reset vote (to fully use ghost votes used pre-Voudon, and not require unnecessary extra commands to detect blocks beneath votelight marker)

function voting:reset_vote

# Set temp scoreboard

scoreboard players set #voudon temp 1

# Set correct votelights

schedule function extras:voudon/voudon_enable_set_votelights 5t

