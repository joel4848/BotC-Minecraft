execute unless score @p Player matches -14 run give @p minecraft:writable_book
scoreboard players set @p Player -14
scoreboard players set @p Alive 1
scoreboard players set @p Storyteller 0
team leave @p
team join Alive @p
