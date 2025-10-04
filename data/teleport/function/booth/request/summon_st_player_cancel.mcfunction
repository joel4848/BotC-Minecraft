
tellraw @a[scores={SummonSTInteracted=1}] {"color":"gold","text":"Sensible choice."}


scoreboard players set #summon_st_confirm_title temp 0
schedule clear teleport:booth/request/summon_await_confirm

scoreboard players set #summon_request_pending_acceptance temp 0
schedule clear teleport:booth/request/summon_timed_out

scoreboard players set @a[scores={SummonSTInteracted=1}] SummonSTConfirmed 0
scoreboard players enable @a[scores={SummonSTInteracted=1}] SummonSTConfirmed

scoreboard players set #summon_st_pending temp 0

advancement revoke @a only teleport:summon_st_interact
scoreboard players set @a[scores={SummonSTInteracted=1}] SummonSTInteracted 0

title @a times 20t 60t 20t
