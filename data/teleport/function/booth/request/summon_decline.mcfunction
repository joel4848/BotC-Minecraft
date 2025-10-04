
scoreboard players set #audience_request_pending temp 0
schedule clear teleport:booth/request/summon_timed_out

tellraw @a[scores={SummonSTInteracted=1}] {"color":"gold","text":"The Storyteller is busy - please try again shortly."}
playsound block.fire.extinguish player @a[scores={SummonSTInteracted=1}]

scoreboard players set #summon_st_pending temp 0

advancement revoke @a only teleport:summon_st_interact
scoreboard players set @a[scores={SummonSTInteracted=1}] SummonSTInteracted 0

title @a times 20t 60t 20t
