execute if entity @s[tag=givenPreset] run function du-in:lobby/kitmenu/skins/actions/pick_preset
# item replace entity @s inventory.19 with minecraft:barrier[item_model="filled_map",item_name={text:"Skin Presets",color:gray,bold:true}]
item replace entity @s inventory.24 with minecraft:barrier[item_model="filled_map",item_name={text:"Skin Presets",color:gray,bold:true}]

tag @s add givenPreset