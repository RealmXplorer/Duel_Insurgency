tellraw @s {text:"1 second left to vote for a map!",color:green,bold:true}
playsound minecraft:block.ancient_debris.break master @s ~ ~ ~ 0.5 1
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 2
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1
clear @s minecraft:carrot_on_a_stick[custom_data={du-in:'countItem'}]