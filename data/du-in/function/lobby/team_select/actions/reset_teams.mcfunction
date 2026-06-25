tag @a remove sort
tag @a remove team1
tag @a remove team2
tag @a remove teamPicked
tag @a add clearing
clear @s carrot_on_a_stick[custom_data={du-in:'clearItem'}]

execute as @a run function du-in:lobby/team_select/item/blue
execute as @a run function du-in:lobby/team_select/item/red

playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 100 1.2
playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 5
tellraw @a [{text:'Teams reset!',bold:true,color:red}]

tag @a remove clearing