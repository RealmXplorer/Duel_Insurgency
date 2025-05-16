execute if entity @s[tag=givenLegendFrom,scores={kitTheme=0}] run function du-in:lobby/kitmenu/select/legend_switch_from
item replace entity @s[tag=kitMenu,scores={kitTheme=0}] inventory.23 with minecraft:carrot_on_a_stick[item_model="du-in:lobby/back",item_name={text:"Normal Kits",color:blue,bold:true}]
tag @s[scores={kitTheme=0}] add givenLegendFrom