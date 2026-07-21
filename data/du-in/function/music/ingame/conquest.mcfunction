#CONQUEST#
execute if entity @a[tag=!beta,tag=!legacy,tag=!musicOff] run function du-in:music/ingame/default/conquest

#BETA#
execute if entity @a[tag=beta,tag=!legacy,tag=!musicOff] run function du-in:music/ingame/beta/conquest

execute if entity @a[tag=legacy,tag=!beta,tag=!musicOff] run function du-in:music/ingame/legacy/conquest

#execute if entity @a[tag=!songEnd,tag=!song] run function du-in:music/ingame/stop/conquest