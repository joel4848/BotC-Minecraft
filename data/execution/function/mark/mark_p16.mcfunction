effect clear @a[scores={Marked=1}] glowing

scoreboard players set @a Marked 0
scoreboard players set @a[scores={Player=-16}] Marked 1
team join Marked @a[scores={Player=-16}]
effect give @a[scores={Player=-16}] glowing infinite 99 true

function nomination:marked_particles
