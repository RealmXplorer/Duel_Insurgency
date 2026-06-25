#Work to do:
tag @s add sort

clear @s carrot_on_a_stick[custom_data={du-in:'sortItem'}]

playsound minecraft:block.crafter.craft master @a ~ ~ ~ 100 2
playsound minecraft:block.crafter.fail master @a ~ ~ ~ 100 1
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 5
tellraw @a [{text:'Teams auto-sorted!',bold:true,color:green}]