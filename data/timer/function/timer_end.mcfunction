schedule function timer:hide_bossbar 100t
title @a title [{"text":"The day ends.","bold":true,"color":"#F8191C"}]
title @a subtitle [{"text":"Time to return to the town square...","italic":true,"color":"#FF0824"}]
function timer:discussion_end_bell
schedule function timer:discussion_end_bell 4s append
schedule function timer:discussion_end_bell 8s append
gamerule doDaylightCycle false
time set 13000