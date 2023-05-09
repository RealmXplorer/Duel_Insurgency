#CLASSIC#
execute if entity @s[tag=!oldPack,tag=!tournament,tag=!legacy,tag=!halloween,tag=!christmas] run function du-in:ingame/scheduled/music/classic/default

#TOURNAMENT#
execute if entity @s[tag=tournament,tag=!oldPack,tag=!startgame] run function du-in:music/ingame/other/tournament

#OLD TOURNAMENT#
execute if entity @s[tag=tournament,tag=oldPack,tag=!startgame] run function du-in:music/ingame/other/alttourn

#BETA#
execute if entity @s[tag=oldPack,tag=!legacy,tag=!halloween,tag=!startgame,tag=!tournament,tag=!christmas] run function du-in:music/ingame/oldpack/classic

#LEGACY#
execute if entity @s[tag=legacy,tag=!oldPack,tag=!tournament,tag=!startgame,tag=!halloween,tag=!christmas] run function du-in:music/ingame/legacy/classic

#HALLOWEEN#
execute if entity @s[tag=halloween,tag=!oldPack,tag=!tournament,tag=!startgame,tag=!legacy,tag=!christmas] run function du-in:music/ingame/halloween/classic

#CHRISTMAS#
execute if entity @s[tag=christmas,tag=!oldPack,tag=!tournament,tag=!startgame,tag=!legacy] run function du-in:music/ingame/christmas/classic


#STOP SOUNDS#
execute if entity @s[tag=!songEnd,tag=!song] run function du-in:music/ingame/stop/classic