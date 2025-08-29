scoreboard players set @a Marked 0
scoreboard players set @a[scores={Player=-15}] Marked 1
team join Marked @a[scores={Player=-15}]
effect give @a[scores={Player=-15}] glowing infinite 99 true

function nomination:marked_particles
