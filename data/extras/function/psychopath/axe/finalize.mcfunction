# call with extras:psychopath/axe/finalize {psychopath:%d,target:%d,active:true}

effect clear @a[scores={Player=..-1}] glowing
execute as @a[team=Psychopath] if score @s Alive matches 1 run team join Alive @s
execute as @a[team=Psychopath] if score @s Alive matches 0 run team join Dead @s

data remove storage extras:psychopath psychopath
data remove storage extras:psychopath target
data merge storage extras:psychopath {allowed:true}

schedule function extras:psychopath/axe/detect_held 1s

schedule function setup:reset_title_times 10s
