
#playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 5 2
#playsound minecraft:block.anvil.land master @s ~ ~ ~ .1 1
playsound minecraft:cuphead.ability.charged master @a ~ ~ ~ 100 1
playsound minecraft:sans.ability master @a ~ ~ ~ .15 1
execute if entity @s[tag=!void] positioned ^ ^ ^1.5 run function du-in:kit/cuphead/ability/charged/raycast
execute if entity @s[tag=void] positioned ^ ^ ^1.5 run function du-in:kit/cuphead/ability/void/raycast

scoreboard players remove @s cardPower 5
clear @s minecraft:paper 1
xp set @s[tag=!stolen] 340 levels
clear @s carrot_on_a_stick
execute if entity @s[tag=stolen] run tag @s add kitDone