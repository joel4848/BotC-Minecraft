# call with extras:psychopath/axe/confirm_kill {psychopath:%d,target:%d,active:true}

tellraw @a {"text":"... who dies.","color":"light_purple"}

$function players:kill_revive/kill {player:$(target)}
function extras:psychopath/axe/finalize with storage extras:psychopath
