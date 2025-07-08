
clear @s[tag=ethicalBug] stick
execute if entity @s[tag=ethicalBug] run playsound minecraft:jack_horner.bug_flick voice @a ~ ~ ~ 1 1
execute if entity @s[tag=ethicalBug] run function du-in:kit/all/weapon/init
#scoreboard players set @s[tag=ethicalBug] weapCount 0
scoreboard players reset @s[tag=ethicalBug] bugHit

#Start cooldown
xp set @s[tag=!stolen,tag=ethicalBug] 310 levels

#End ability
execute if entity @s[tag=ethicalBug] run function du-in:kit/jack_horner/ability/end