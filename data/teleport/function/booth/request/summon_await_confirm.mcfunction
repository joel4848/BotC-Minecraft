
title @a[scores={SummonSTInteracted=1}] times 0 5 0
title @a[scores={SummonSTInteracted=1}] title {"color":"gold","text":"Confirm request in chat"}


execute unless score @a[scores={SummonSTInteracted=1},limit=1] SummonSTConfirmed matches 0 unless score #summon_st_confirm_title temp matches 1 if score #summon_st_placed temp matches 0 run title @a[scores={SummonSTInteracted=1}] clear
execute unless score @a[scores={SummonSTInteracted=1},limit=1] SummonSTConfirmed matches 0 unless score #summon_st_confirm_title temp matches 1 if score #summon_st_placed temp matches 0 run title @a[scores={SummonSTInteracted=1}] times 20t 60t 20t


execute if score @a[scores={SummonSTInteracted=1},limit=1] SummonSTConfirmed matches 1 run function teleport:booth/request/summon_st_player_confirm

execute if score @a[scores={SummonSTInteracted=1},limit=1] SummonSTConfirmed matches 2 run function teleport:booth/request/summon_st_player_cancel

execute if score @a[scores={SummonSTInteracted=1},limit=1] SummonSTConfirmed matches 0 if score #summon_st_confirm_title temp matches 1 unless score #summon_st_placed temp matches 0 run schedule function teleport:booth/request/summon_await_confirm 2t
