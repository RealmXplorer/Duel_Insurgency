execute if entity @s[tag=!empower] run give @s copper_nugget[item_name={text:"Candy Corn",color:"#e2a807",bold:true},lore=[{text:"Eat for big speed boost"}],consumable={consume_seconds:0.5,animation:"eat",has_consume_particles:true,on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:speed",amplifier:2,duration:60,show_particles:0b,show_icon:1b}]}]},item_model="du-in:other/candy_corn"] 3

execute if entity @s[tag=empower] run give @s copper_nugget[item_name={text:"Super Candy Corn",color:"#e2a807",bold:true},lore=[{text:"Eat for big speed and damage boost"}],consumable={consume_seconds:0.5,animation:"eat",has_consume_particles:true,on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:speed",amplifier:2,duration:60,show_particles:0b,show_icon:1b},{id:"minecraft:strength",amplifier:0,duration:60,show_particles:0b,show_icon:1b}]}]},item_model="du-in:other/candy_corn"] 3


#Set cooldown
xp set @s 60 levels
tag @s remove empower
# execute if entity @s[tag=stolen] run tag @s add kitDone
execute if entity @s[tag=stolen] run function du-in:kit/villager/ability/end/revert

tag @s remove kitActions
