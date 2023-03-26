#NORMAL CLASSIC STUFF#
execute if entity @a[tag=!teamMode] run function du-in:ingame/classic/default/default

#TEAM CLASSIC STUFF#
execute if entity @a[tag=teamMode] run function du-in:ingame/classic/team/teams

#MUSIC#
execute as @a[tag=cIngame,tag=!musicOff,tag=!startgame,tag=!saac,tag=!bigChungus,tag=!saul] at @s run function du-in:music/ingame/classic

execute as @a[tag=cIngame,tag=!ambOff] at @s run function du-in:music/ambient/classic