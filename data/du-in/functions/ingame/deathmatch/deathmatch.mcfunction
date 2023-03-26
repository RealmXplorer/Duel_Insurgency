#DEATHMATCH ELIMINATED#
execute as @a[tag=playing,tag=dmIngame,scores={Lives=..0},tag=!dmOut] run function du-in:ingame/deathmatch/dm_out

#ONE LIFE LEFT#
execute as @a[tag=dmIngame,scores={Lives=..1},tag=!dmClose] run function du-in:ingame/deathmatch/close

#DEATHMATCH END OF ROUND#
execute if score #main playerCount matches 2 run function du-in:ingame/deathmatch/finale

#TEAM DEATHMATCH STUFF#
execute if entity @a[tag=teamMode] run function du-in:ingame/deathmatch/team/teams

#DEATHMATCH ENDING#
execute if score #main playerCount matches 1 run function du-in:ingame/deathmatch/end

#TIE#
execute if score #main playerCount matches ..0 run tag @r[tag=dmDead] add win

#tag @a[tag=dmDead] remove playing

#MUSIC#
execute as @a[tag=dmIngame,tag=!musicOff,tag=!startgame,tag=!saac,tag=!bigChungus] at @s run function du-in:music/ingame/deathmatch

execute as @a[tag=dmIngame,tag=!ambOff] at @s run function du-in:music/ambient/classic