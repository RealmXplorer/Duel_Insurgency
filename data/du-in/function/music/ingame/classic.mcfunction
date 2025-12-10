#CLASSIC#
#execute if entity @s[tag=!oldPack,tag=!tournament,tag=!legacy,tag=!halloween,tag=!christmas] run function du-in:music/ingame/default/classic
execute if entity @a[tag=!oldPack,tag=!tournament,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul] run function du-in:music/ingame/default/classic

#TOURNAMENT#
execute if entity @a[tag=tournament,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul] run function du-in:music/ingame/other/tournament

#execute if entity @s[tag=tournament,tag=!oldPack,tag=!startgame] run function du-in:music/ingame/other/tournament

#OLD TOURNAMENT#
#execute if entity @s[tag=tournament,tag=oldPack] run function du-in:music/ingame/other/alttourn

#BETA#
#execute if entity @s[tag=oldPack,tag=!legacy,tag=!halloween,tag=!tournament,tag=!christmas] run function du-in:music/ingame/oldpack/classic

execute if entity @a[tag=oldPack,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul] run function du-in:music/ingame/oldpack/classic

#LEGACY#
execute if entity @a[tag=legacy,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul] run function du-in:music/ingame/legacy/classic

#HALLOWEEN#
execute if entity @a[tag=halloween,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul] run function du-in:music/ingame/halloween/classic

#CHRISTMAS#
execute if entity @a[tag=christmas,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul] run function du-in:music/ingame/christmas/classic

#STOP SOUNDS#
#execute if entity @s[tag=!songEnd,tag=!song] run function du-in:music/ingame/stop/classic