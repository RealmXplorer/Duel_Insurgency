#DEATHMATCH#
execute if entity @a[tag=!beta,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] run function du-in:music/ingame/default/deathmatch

#BETA#
execute if entity @a[tag=beta,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] run function du-in:music/ingame/beta/deathmatch

#LEGACY#
execute if entity @a[tag=legacy,tag=!beta,tag=!halloween,tag=!christmas,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] run function du-in:music/ingame/legacy/deathmatch

#HALLOWEEN#
execute if entity @a[tag=halloween,tag=!beta,tag=!legacy,tag=!christmas,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] run function du-in:music/ingame/halloween/deathmatch

#CHRISTMAS
execute if entity @a[tag=christmas,tag=!beta,tag=!legacy,tag=!halloween,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] run function du-in:music/ingame/christmas/deathmatch


#execute if entity @s[tag=!songEnd,tag=!song] run function du-in:music/ingame/stop/deathmatch
