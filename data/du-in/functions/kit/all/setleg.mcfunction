#UNLOCKED CONSTANTS#
#SAAC#
execute if entity @s[scores={kit=1000},tag=!stolen] run function du-in:kit/saac/constant

#BLAKE#
execute if entity @s[scores={kit=1001},tag=!stolen] run function du-in:kit/paz/constant

#JERMA#
execute if entity @s[scores={kit=1002},tag=!stolen] run function du-in:kit/jerma/constant

#IMPOSTER#
execute if entity @s[scores={kit=1003},tag=!stolen] run function du-in:kit/impostor/constant

#THANOS#
#execute as @a[scores={kit=1004}] run attribute @s generic.knockback_resistance base set 0.2

#RUNZA REX#
execute if entity @s[scores={kit=1005},tag=!stolen] run function du-in:kit/runza/constant


#KIT MUSIC#
execute unless entity @s[tag=startgame] unless entity @s[tag=legMusicOff] run function du-in:music/ingame/kit

#EASTER EGG KITS#
execute if entity @s[scores={kit=42069},tag=!stolen] run function du-in:kit/chungus/constant