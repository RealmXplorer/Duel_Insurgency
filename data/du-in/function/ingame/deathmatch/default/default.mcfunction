#DEATHMATCH ELIMINATED#
execute as @a[tag=playing,tag=dmIngame,scores={Lives=..0},tag=!dmOut] run function du-in:ingame/deathmatch/default/dm_out

#ONE LIFE LEFT#
execute as @a[tag=dmIngame,scores={Lives=..1},tag=!dmClose] run function du-in:ingame/deathmatch/default/close

#DEATHMATCH END OF ROUND#
execute if score #main playerCount matches 2 run function du-in:ingame/deathmatch/default/finale

#DEATHMATCH ENDING#
execute if score #main playerCount matches 1 run function du-in:ingame/deathmatch/default/end

#TIE#
execute if score #main playerCount matches ..0 run tag @r[tag=dmDead] add win
