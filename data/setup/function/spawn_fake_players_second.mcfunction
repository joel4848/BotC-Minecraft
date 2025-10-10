execute if score #fake_player_amount temp matches 1.. run execute as @e[limit=1,tag=seat1,type=minecraft:marker] at @s run tp p1 ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight1,type=marker]
execute if score #fake_player_amount temp matches 2.. run execute as @e[limit=1,tag=seat2,type=minecraft:marker] at @s run tp p2 ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight2,type=marker]
execute if score #fake_player_amount temp matches 3.. run execute as @e[limit=1,tag=seat3,type=minecraft:marker] at @s run tp p3 ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight3,type=marker]
execute if score #fake_player_amount temp matches 4.. run execute as @e[limit=1,tag=seat4,type=minecraft:marker] at @s run tp p4 ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight4,type=marker]
execute if score #fake_player_amount temp matches 5.. run execute as @e[limit=1,tag=seat5,type=minecraft:marker] at @s run tp p5 ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight5,type=marker]
execute if score #fake_player_amount temp matches 6.. run execute as @e[limit=1,tag=seat6,type=minecraft:marker] at @s run tp p6 ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight6,type=marker]
execute if score #fake_player_amount temp matches 7.. run execute as @e[limit=1,tag=seat7,type=minecraft:marker] at @s run tp p7 ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight7,type=marker]
execute if score #fake_player_amount temp matches 8.. run execute as @e[limit=1,tag=seat8,type=minecraft:marker] at @s run tp p8 ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight8,type=marker]
execute if score #fake_player_amount temp matches 9.. run execute as @e[limit=1,tag=seat9,type=minecraft:marker] at @s run tp p9 ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight9,type=marker]
execute if score #fake_player_amount temp matches 10.. run execute as @e[limit=1,tag=seat10,type=minecraft:marker] at @s run tp P10 ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight10,type=marker]
execute if score #fake_player_amount temp matches 11.. run execute as @e[limit=1,tag=seat11,type=minecraft:marker] at @s run tp p11 ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight11,type=marker]
execute if score #fake_player_amount temp matches 12.. run execute as @e[limit=1,tag=seat12,type=minecraft:marker] at @s run tp P12 ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight12,type=marker]
execute if score #fake_player_amount temp matches 13.. run execute as @e[limit=1,tag=seat13,type=minecraft:marker] at @s run tp p13 ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight13,type=marker]
execute if score #fake_player_amount temp matches 14.. run execute as @e[limit=1,tag=seat14,type=minecraft:marker] at @s run tp P14 ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight14,type=marker]
execute if score #fake_player_amount temp matches 15.. run execute as @e[limit=1,tag=seat15,type=minecraft:marker] at @s run tp P15 ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight15,type=marker]
execute if score #fake_player_amount temp matches 16.. run execute as @e[limit=1,tag=seat16,type=minecraft:marker] at @s run tp P16 ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=votelight16,type=marker]

execute if score #fake_player_amount temp matches 1.. run execute as @a[name=p1] at @s run function players:assign/assign {player:1}
execute if score #fake_player_amount temp matches 2.. run execute as @a[name=p2] at @s run function players:assign/assign {player:2}
execute if score #fake_player_amount temp matches 3.. run execute as @a[name=p3] at @s run function players:assign/assign {player:3}
execute if score #fake_player_amount temp matches 4.. run execute as @a[name=p4] at @s run function players:assign/assign {player:4}
execute if score #fake_player_amount temp matches 5.. run execute as @a[name=p5] at @s run function players:assign/assign {player:5}
execute if score #fake_player_amount temp matches 6.. run execute as @a[name=p6] at @s run function players:assign/assign {player:6}
execute if score #fake_player_amount temp matches 7.. run execute as @a[name=p7] at @s run function players:assign/assign {player:7}
execute if score #fake_player_amount temp matches 8.. run execute as @a[name=p8] at @s run function players:assign/assign {player:8}
execute if score #fake_player_amount temp matches 9.. run execute as @a[name=p9] at @s run function players:assign/assign {player:9}
execute if score #fake_player_amount temp matches 10.. run execute as @a[name=P10] at @s run function players:assign/assign {player:10}
execute if score #fake_player_amount temp matches 11.. run execute as @a[name=p11] at @s run function players:assign/assign {player:11}
execute if score #fake_player_amount temp matches 12.. run execute as @a[name=P12] at @s run function players:assign/assign {player:12}
execute if score #fake_player_amount temp matches 13.. run execute as @a[name=p13] at @s run function players:assign/assign {player:13}
execute if score #fake_player_amount temp matches 14.. run execute as @a[name=P14] at @s run function players:assign/assign {player:14}
execute if score #fake_player_amount temp matches 15.. run execute as @a[name=P15] at @s run function players:assign/assign {player:15}
execute if score #fake_player_amount temp matches 16.. run execute as @a[name=P16] at @s run function players:assign/assign {player:16}

