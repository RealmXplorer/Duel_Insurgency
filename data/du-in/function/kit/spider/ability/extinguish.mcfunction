effect give @s[tag=!sabotaged] fire_resistance 3 1 true
playsound minecraft:block.fire.extinguish master @a[tag=!saboted] ~ ~ ~ 10000 1

tellraw @s [{text:"Your webs extinguished the fire!",bold:true,color:green}]
clear @s #du-in:ability
xp set @s[tag=!stolen] 240 levels
execute if entity @s[tag=stolen] run tag @s add kitDone
