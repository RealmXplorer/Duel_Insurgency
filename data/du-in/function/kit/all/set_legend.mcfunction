#UNLOCKED CONSTANTS#
#SAAC#
execute if entity @s[scores={kit=1000}] run function du-in:kit/saac/constant

#BLAKE#
execute if entity @s[scores={kit=1001}] run function du-in:kit/paz/constant

#IMPOSTER#
execute if entity @s[scores={kit=1002}] run function du-in:kit/impostor/constant

#JERMA#
execute if entity @s[scores={kit=1003}] run function du-in:kit/jerma/constant

#RUNZA REX#
execute if entity @s[scores={kit=1004}] run function du-in:kit/runza/constant

#JACK BLACK#
execute if entity @s[scores={kit=1005}] run function du-in:kit/jack_black/constant


#KIT MUSIC#
execute unless entity @s[tag=startgame] unless entity @s[tag=legMusicOff] run function du-in:music/ingame/kit

#EASTER EGG KITS#
#execute if entity @s[scores={kit=42069}] run function du-in:kit/chungus/constant

#execute if entity @s[scores={kit=2015}] run function du-in:kit/saul/constant