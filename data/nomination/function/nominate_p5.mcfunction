effect clear @a[scores={Nominated=1}] glowing
scoreboard players set @a Nominated 0
team leave @a[scores={Player=-5}]
team empty Nominated
team join Nominated @a[scores={Player=-5}]
scoreboard players set @a[scores={Player=-5}] Nominated 1
effect give @a[scores={Player=-5}] glowing infinite 99 true

function voting:reset_vote

function nomination:announce_required_votes

function nomination:nominated_particles
