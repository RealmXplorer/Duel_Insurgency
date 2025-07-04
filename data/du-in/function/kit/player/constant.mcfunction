#SOUNDS#
# execute if entity @s[scores={hit=5..}] run function du-in:kit/player/events/hit
# execute if entity @s[scores={jump=1..}] run function du-in:kit/player/events/jump

#CONSTANTS#
#-change
#execute if score #main titleTimer2 matches 21 run item replace entity @s hotbar.8 with minecraft:arrow 2

#WEAPONS#
execute unless entity @s[scores={secCount=1}] if entity @s[tag=!teamDead,tag=!stolen] run function du-in:kit/player/bow

#TEST BOW COUNT#
execute store result score @s secCount run clear @s bow 0

#SO THIS POWER...
#OF DETERMINATION
#IT IS NOT UNIQUE TO OUR WORLD?
#HOW CURIOUS
#VERY
#VERY
#CURIOUS