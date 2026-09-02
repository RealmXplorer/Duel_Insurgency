execute if entity @s[tag=givenSkinLegendFrom,scores={skinTheme=0}] run function du-in:skin_menu/actions/legend_switch_from
item replace entity @s[tag=skinMenu,scores={skinTheme=0}] inventory.23 with minecraft:carrot_on_a_stick[item_model="du-in:lobby/back",item_name={text:"Normal Kits",color:blue,bold:true}]
tag @s[scores={skinTheme=0}] add givenSkinLegendFrom