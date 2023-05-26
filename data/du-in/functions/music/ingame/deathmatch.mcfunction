#DEATHMATCH#
execute if entity @a[tag=!oldPack,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul,tag=!musicOff] run function du-in:music/ingame/default/deathmatch

#BETA#
execute if entity @a[tag=oldPack,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul,tag=!musicOff] run function du-in:music/ingame/oldpack/deathmatch

#LEGACY#
execute if entity @a[tag=legacy,tag=!oldPack,tag=!halloween,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul,tag=!musicOff] run function du-in:music/ingame/legacy/deathmatch

#HALLOWEEN#
execute if entity @a[tag=halloween,tag=!oldPack,tag=!legacy,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul,tag=!musicOff] run function du-in:music/ingame/halloween/deathmatch

#CHRISTMAS
execute if entity @a[tag=christmas,tag=!oldPack,tag=!legacy,tag=!halloween,tag=!saac,tag=!bigChungus,tag=!saul,tag=!musicOff] run function du-in:music/ingame/christmas/deathmatch


#execute if entity @s[tag=!songEnd,tag=!song] run function du-in:music/ingame/stop/deathmatch
