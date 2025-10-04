
schedule clear teleport:booth/request/summon_timed_out

scoreboard players set #audience_request_pending temp 0
schedule clear teleport:booth/request/summon_timed_out

scoreboard players set #summon_st_pending temp 0

function teleport:booth/bring_storyteller

scoreboard players set @a[scores={SummonSTInteracted=1}] Booth 1
execute at @e[limit=1,tag=boothplayer,type=marker] run teleport @a[scores={SummonSTInteracted=1}] ~ ~ ~ facing entity @e[limit=1,tag=boothstoryteller,type=marker]

execute at @a[scores={SummonSTInteracted=1}] run playsound entity.player.teleport master @a[scores={SummonSTInteracted=1}] ~ ~ ~ 1 1 1
execute at @a[scores={Storyteller=1}] run playsound entity.player.teleport master @a[scores={Storyteller=1}] ~ ~ ~ 1 1 1



advancement revoke @a only teleport:summon_st_interact
scoreboard players set @a[scores={SummonSTInteracted=1}] SummonSTInteracted 0
