#Presets button
# execute unless items entity @s inventory.19 minecraft:barrier run function du-in:lobby/kitmenu/skins/skin_presets

#item replace entity @s inventory.24 with minecraft:barrier[item_model="filled_map",item_name={text:"Skin Presets",color:gray,bold:true}]
# execute unless items entity @s inventory.24 minecraft:barrier run function du-in:lobby/kitmenu/skins/skin_presets
#execute unless items entity @s inventory.24 minecraft:barrier run function du-in:lobby/kitmenu/skins/skin_presets

#Skin Select Display
# execute unless items entity @s inventory.26 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/skins/skin_display
execute unless items entity @s inventory.18 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/skins/skin_display