tellraw @s ["",{"text":"You deal more damage!","bold":true,"color":"red"}]
#playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 5 2
#playsound minecraft:block.anvil.land master @s ~ ~ ~ .1 1
playsound minecraft:cuphead.super master @a ~ ~ ~ 2 1.25
effect give @s haste 2 255 true
effect give @s strength 1 1 true
xp set @s 200 levels
clear @s carrot_on_a_stick
