#KING OF THE HILL#
execute if entity @a[tag=!oldPack,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] run function du-in:music/ingame/default/koth

#BETA#
execute if entity @a[tag=oldPack,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] run function du-in:music/ingame/oldpack/koth

#LEGACY#
execute if entity @a[tag=legacy,tag=!oldPack,tag=!halloween,tag=!christmas,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] run function du-in:music/ingame/legacy/koth

#HALLOWEEN#
execute if entity @a[tag=halloween,tag=!oldPack,tag=!legacy,tag=!christmas,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] run function du-in:music/ingame/halloween/koth

#CHRISTMAS#
execute if entity @a[tag=christmas,tag=!oldPack,tag=!legacy,tag=!halloween,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] run function du-in:music/ingame/christmas/koth

#STOP AUDIO#
#execute if entity @s[tag=!songEnd,tag=!song] run function du-in:music/ingame/stop/koth