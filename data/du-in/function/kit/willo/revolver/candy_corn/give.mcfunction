give @s copper_nugget[item_name={text:"Candy Corn",color:"#e2a807",bold:true},lore=[{text:"Ammo for revolver,"},{text:"\nEatfor speed boost"}],consumable={consume_seconds:1,animation:"eat",has_consume_particles:true,on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:speed",amplifier:0,duration:60,show_particles:0b,show_icon:1b}]}]},item_model="du-in:other/candy_corn"] 3
execute store result score @s willoStock run clear @s copper_nugget 0

scoreboard players set @s willoReloadTimer 20