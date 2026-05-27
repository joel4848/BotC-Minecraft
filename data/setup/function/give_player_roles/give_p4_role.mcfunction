$execute if data storage minecraft:joelbotc {player_4_role_type:"Townsfolk"} run give @a[scores={Player=-4}] paper[custom_name='{"bold":true,"italic":false,"color":"#1F65FF","text":"$(player_4_role)","underlined":true}'] 1
$execute if data storage minecraft:joelbotc {player_4_role_type:"Outsider"} run give @a[scores={Player=-4}] paper[custom_name='{"bold":true,"italic":false,"color":"#46D5FF","text":"$(player_4_role)","underlined":true}'] 1
$execute if data storage minecraft:joelbotc {player_4_role_type:"Minion"} run give @a[scores={Player=-4}] paper[custom_name='{"bold":true,"italic":false,"color":"#FF6900","text":"$(player_4_role)","underlined":true}'] 1
$execute if data storage minecraft:joelbotc {player_4_role_type:"Demon"} run give @a[scores={Player=-4}] paper[custom_name='{"bold":true,"italic":false,"color":"#CE0100","text":"$(player_4_role)","underlined":true}'] 1
$execute if data storage minecraft:joelbotc {player_4_role_type:"Traveller"} run give @a[scores={Player=-4}] paper[custom_name='{"bold":true,"italic":false,"color":"#ff00ff","text":"$(player_4_role)","underlined":true}'] 1

scoreboard players set @a[scores={Player=-4}] GivenRole 1