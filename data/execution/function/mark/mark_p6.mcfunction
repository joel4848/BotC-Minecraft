scoreboard players set @a Marked 0
scoreboard players set @a[scores={Player=-6}] Marked 1
team join Marked @a[scores={Player=-6}]
effect give @a[scores={Player=-6}] glowing infinite 99 true

function nomination:marked_particles
