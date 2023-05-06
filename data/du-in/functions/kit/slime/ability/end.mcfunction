#Play particles and sounds
particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0 100 force
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 100000 1
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 100000 0

#Clear armor and weapons
clear @s #du-in:reset

#Set Slime's armor and weapon back to normal
tag @s remove magma
scoreboard players set @s weapCount 0
tag @s add armor

#End ability and start cooldown
xp set @s[tag=!stolen] 320 levels
execute if entity @s[tag=stolen] run tag @s add kitDone
scoreboard players reset @s magmaTimer