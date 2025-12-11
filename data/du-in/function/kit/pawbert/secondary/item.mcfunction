#Venom Injector (and variations)
#is Blaze rod. Texture and model should be under "other/venom_filled", and "other/venom_empty"

#Give filled injector
execute if entity @s[tag=!venomEmpty] run item replace entity @s hotbar.1 with minecraft:blaze_rod[item_name={text:"Venom Injector",color:gold,bold:true},lore=[{text:"Hit a player to use!",color:dark_purple,bold:true},[{text:""}],{text:"Inject a lethal snake venom",color:dark_gray},{text:"into an enemy.",color:dark_gray}],item_model="du-in:other/venom_filled"] 1

#Give empty injector
execute if entity @s[tag=venomEmpty] run item replace entity @s hotbar.1 with minecraft:blaze_rod[item_name={text:"Venom Injector (Empty)",color:gray,bold:true},lore=[{text:"Kill a player to reload!",color:dark_purple,bold:true},[{text:""}],{text:"Inject a lethal snake venom",color:dark_gray},{text:"into an enemy.",color:dark_gray}],item_model="du-in:other/venom_empty",consumable={consume_seconds:2,animation:"block",sound:"item.bottle.fill",has_consume_particles:false,on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:speed",amplifier:0,duration:30,show_particles:0b,show_icon:1b}]},{type:"minecraft:play_sound",sound:"block.respawn_anchor.charge"}]}] 1