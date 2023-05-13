#tag @s[tag=ethicalBug] remove ethicalBug
clear @s[tag=ethicalBug] stick
##COPYRIGHT
execute if entity @s[tag=ethicalBug] run playsound minecraft:jack_horner.bug_flick voice @a ~ ~ ~ 1 1
scoreboard players set @s[tag=ethicalBug] weapCount 0
scoreboard players reset @s[tag=ethicalBug] bugHit
#Remove ability from hand
#clear @s minecraft:carrot_on_a_stick
#Start cooldown
xp set @s[tag=!stolen,tag=ethicalBug] 310 levels

#End ability
execute if entity @s[tag=ethicalBug] run function du-in:kit/jack_horner/ability/end