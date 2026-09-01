execute if entity @s[tag=givenSkinLegendTo,scores={skinTheme=1..}] run function du-in:skin_menu/actions/legend_switch_to
item replace entity @s[scores={skinTheme=1..}] inventory.21 with minecraft:carrot_on_a_stick[item_name={text:"Legendary",color:gold,bold:true},item_model="du-in:lobby/crown"]
tag @s[scores={skinTheme=1..}] add givenSkinLegendTo