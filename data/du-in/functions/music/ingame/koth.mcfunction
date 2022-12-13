#KING OF THE HILL#
execute if entity @s[tag=!oldPack,tag=!legacy,tag=!halloween,tag=!christmas] run function du-in:music/ingame/default/koth

#BETA#
execute if entity @s[tag=oldPack,tag=!legacy,tag=!halloween,tag=!christmas] run function du-in:music/ingame/oldpack/koth

#LEGACY#
execute if entity @s[tag=legacy,tag=!oldPack,tag=!halloween,tag=!christmas] run function du-in:music/ingame/legacy/koth

#HALLOWEEN#
execute if entity @s[tag=halloween,tag=!oldPack,tag=!legacy,tag=!christmas] run function du-in:music/ingame/halloween/koth

#CHRISTMAS#
execute if entity @s[tag=christmas,tag=!oldPack,tag=!legacy,tag=!halloween] run function du-in:music/ingame/christmas/koth

#STOP AUDIO#
execute if entity @s[tag=!songEnd,tag=!song] run function du-in:music/ingame/stop/koth