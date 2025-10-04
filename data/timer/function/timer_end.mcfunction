schedule function timer:hide_bossbar 100t
title @a title [{"text":"The day ends.","bold":true,"color":"#F8191C"}]
title @a subtitle [{"text":"Time to return to the town square...","italic":true,"color":"#FF0824"}]
function timer:discussion_end_bell
schedule function timer:discussion_end_bell 4s append
schedule function timer:discussion_end_bell 8s append
gamerule doDaylightCycle false
time set 13000

function teleport:booth/request/remove
scoreboard players set #summon_st_confirm_title temp 0
schedule clear teleport:booth/request/summon_await_confirm
title @a times 20t 60t 20t
