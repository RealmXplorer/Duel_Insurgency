#This runs if a player has been marked by Jerma for instant death
scoreboard players remove @s jermaTimer 1
execute if entity @s[tag=peepedHorror,scores={jermaTimer=..0}] run function du-in:kit/jerma/ability/peeped_horror