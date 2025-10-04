scoreboard players set @a[scores={SummonSTInteracted=1}] SummonSTConfirmed 0
scoreboard players enable @a[scores={SummonSTInteracted=1}] SummonSTConfirmed

scoreboard players set #summon_st_confirm_title temp 0
schedule clear teleport:booth/request/summon_await_confirm

scoreboard players set #summon_request_pending_acceptance temp 0
schedule clear teleport:booth/request/summon_timed_out

scoreboard players set #audience_request_pending temp 1

tellraw @a[scores={SummonSTInteracted=1}] {"color":"gold","text":"Audience request sent. Please wait for a response."}
execute at @a[scores={SummonSTInteracted=1}] run playsound item.goat_horn.sound.0 master @a[scores={SummonSTInteracted=1}] ~ ~ ~

tellraw @a[scores={Storyteller=1}] [{"color":"gold","text":"Audience request from "},{"selector":"@a[scores={SummonSTInteracted=1}]"},{"color":"gold","text":" - "},{"color":"green","text":"["},{"clickEvent":{"action":"run_command","value":"/execute if score #audience_request_pending temp matches 1 run function teleport:booth/request/summon_accept"},"color":"green","text":"Accept","underlined":true},{"color":"green","text":"] "},{"color":"red","text":"["},{"clickEvent":{"action":"run_command","value":"/execute if score #audience_request_pending temp matches 1 run function teleport:booth/request/summon_decline"},"color":"red","text":"Decline","underlined":true},{"color":"red","text":"]"}]
execute at @a[scores={Storyteller=1}] run playsound item.goat_horn.sound.0 master @a[scores={Storyteller=1}] ~ ~ ~

scoreboard players set @a[scores={SummonSTInteracted=1}] SummonSTConfirmed 0
scoreboard players enable @a[scores={SummonSTInteracted=1}] SummonSTConfirmed
# scoreboard players set @a[scores={SummonSTInteracted=1}] SummonSTInteracted 0

title @a times 20t 60t 20t
