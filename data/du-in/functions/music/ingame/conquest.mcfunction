#CONQUEST#
execute if entity @a[tag=!oldPack,tag=!legacy,tag=!musicOff] run function du-in:music/ingame/default/conquest

#BETA#
execute if entity @a[tag=oldPack,tag=!legacy,tag=!musicOff] run function du-in:music/ingame/oldpack/conquest

execute if entity @a[tag=legacy,tag=!oldPack,tag=!musicOff] run function du-in:music/ingame/legacy/conquest

#execute if entity @a[tag=!songEnd,tag=!song] run function du-in:music/ingame/stop/conquest