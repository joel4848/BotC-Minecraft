
execute if score #audience_request_pending temp matches 1 run scoreboard players set #summon_st_confirm_title temp 0
schedule clear teleport:booth/request/summon_await_confirm
execute if score #audience_request_pending temp matches 1 run title @a[scores={SummonSTInteracted=1}] title "Request timed out"
execute if score #audience_request_pending temp matches 1 run title @a[scores={SummonSTInteracted=1}] subtitle "Please try again"
execute if score #audience_request_pending temp matches 1 run scoreboard players set #summon_st_confirm_title temp 0

scoreboard players set #summon_st_pending temp 0

advancement revoke @a only teleport:summon_st_interact
advancement revoke @a[scores={SummonSTInteracted=1}] only teleport:summon_st_interact
scoreboard players set @a[scores={SummonSTInteracted=1}] SummonSTInteracted 0
