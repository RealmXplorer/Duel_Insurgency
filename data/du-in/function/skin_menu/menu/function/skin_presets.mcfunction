execute if entity @s[tag=givenPreset] run function du-in:skin_menu/actions/skin_presets
item replace entity @s inventory.19 with minecraft:barrier[item_model="filled_map",item_name={text:"Skin Presets",color:gray,bold:true}]

tag @s add givenPreset