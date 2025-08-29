# execute if score #og_enabled temp matches 1 run stopsound @a[scores={Storyteller=0}] block minecraft:block.lever.click

execute if score #og_enabled temp matches 1 run execute if score #vote_running temp matches 1 run stopsound @a block minecraft:block.lever.click