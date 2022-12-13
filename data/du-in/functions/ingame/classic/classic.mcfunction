#NORMAL CLASSIC STUFF#
execute if entity @a[tag=!teamMode] run function du-in:ingame/classic/default

#TEAM CLASSIC STUFF#
execute if entity @a[tag=teamMode] run function du-in:ingame/classic/teams

#MUSIC#
execute as @a[tag=cIngame,tag=!musicOff,tag=!startgame,tag=!saac,tag=!bigChungus] at @s run function du-in:music/ingame/classic