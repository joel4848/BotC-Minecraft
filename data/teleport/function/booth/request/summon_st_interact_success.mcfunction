
scoreboard players set @a SummonSTInteracted 0
scoreboard players set @a SummonSTConfirmed 0
scoreboard players set @s SummonSTInteracted 1
scoreboard players enable @a SummonSTConfirmed

playsound block.bell.use master @s

tellraw @a[scores={SummonSTInteracted=1}] [{"color":"gold","text":"Are you sure you want to request an audience with the Storyteller? "},{"text":"Prank calls may result in execution.","underlined":true},{"color":"white","text":"\nSelect: "},{"color":"green","text":"["},{"clickEvent":{"action":"run_command","value":"/trigger SummonSTConfirmed set 1"},"color":"green","text":"Yes ✓","underlined":true},"]"," ",{"color":"red","text":"["},{"clickEvent":{"action":"run_command","value":"/trigger SummonSTConfirmed set 2"},"color":"red","text":"No ✗","underlined":true},{"color":"red","text":"]"}]


















scoreboard players set #summon_st_confirm_title temp 1
function teleport:booth/request/summon_await_confirm

scoreboard players set #summon_request_pending_acceptance temp 1
schedule function teleport:booth/request/summon_timed_out 30s
