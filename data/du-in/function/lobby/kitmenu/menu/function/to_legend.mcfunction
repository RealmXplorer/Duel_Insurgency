execute if entity @s[tag=givenLegendTo,scores={kitTheme=1..}] run function du-in:lobby/kitmenu/select/legend_switch_to
item replace entity @s[tag=kitMenu,scores={kitTheme=1..}] inventory.21 with minecraft:carrot_on_a_stick[item_name={text:"Legendary",color:gold,bold:true},item_model="du-in:lobby/crown"]
tag @s[scores={kitTheme=1..}] add givenLegendTo