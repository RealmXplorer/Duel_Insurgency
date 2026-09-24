#UNLOCKED CONSTANTS#
#KIT MUSIC#
execute unless entity @s[tag=startgame] unless entity @s[tag=legMusicOff] run function du-in:music/ingame/kit

#SAAC#
execute if score @s kit matches 1000 run return run function du-in:kit/saac/constant

#BLAKE#
#execute if score @s kit matches 1001 run return run function du-in:kit/paz/constant

#IMPOSTER#
#execute if score @s kit matches 1002 run return run function du-in:kit/impostor/constant

#JERMA#
#execute if score @s kit matches 1003 run return run function du-in:kit/jerma/constant

#RUNZA REX#
execute if score @s kit matches 1004 run return run function du-in:kit/runza/constant

#JACK BLACK#
execute if score @s kit matches 1005 run return run function du-in:kit/jack_black/constant

#BEETLEJUICE#
execute if score @s kit matches 1006 run return run function du-in:kit/beetlejuice/constant


#EASTER EGG KITS#
#execute if entity @s[scores={kit=42069}] run function du-in:kit/chungus/constant

#execute if entity @s[scores={kit=2015}] run function du-in:kit/saul/constant