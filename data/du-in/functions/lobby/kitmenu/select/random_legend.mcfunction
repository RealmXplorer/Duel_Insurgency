tag @s add randomLeg

playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 1.5
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 100 .5 1

title @s actionbar ["",{"text":"Random ","bold":true,"color":"blue"},{"text":"legendary ","bold":true,"color":"gold"},{"text":"kit selected!","bold":true,"color":"blue"}]

function du-in:lobby/kitmenu/select/common

tellraw @s [{"text":"Selected a ","bold":true,"color":"gray"},{"text":"Random ","bold":true,"color":"dark_blue"},{"text":"Legendary ","bold":true,"color":"gold"},{"text":"kit!","bold":true,"color":"gray"}]

advancement grant @s only du-in:random
clear @s barrier[custom_model_data=106]
execute if entity @s[scores={thrownBarrier=1..}] run function du-in:other/clear_ground_items
