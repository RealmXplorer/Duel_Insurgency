#Points#
execute as @e[type=marker,tag=cqPoint] at @s run function du-in:ingame/conquest/points/point

execute if entity @a[tag=!timedMode] run function du-in:ingame/conquest/default/default
execute if entity @a[tag=timedMode] run function du-in:ingame/conquest/timed/timed

#MUSIC#
execute as @a[tag=cqIngame,tag=!startGame,tag=!saac,tag=!bigChungus,tag=!saul] at @s run function du-in:music/ingame/conquest

execute as @a[tag=cqIngame,tag=!ambOff] at @s run function du-in:maps/conquest