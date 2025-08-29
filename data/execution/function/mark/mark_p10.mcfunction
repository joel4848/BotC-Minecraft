scoreboard players set @a Marked 0
scoreboard players set @a[scores={Player=-10}] Marked 1
team join Marked @a[scores={Player=-10}]
effect give @a[scores={Player=-10}] glowing infinite 99 true

function nomination:marked_particles
