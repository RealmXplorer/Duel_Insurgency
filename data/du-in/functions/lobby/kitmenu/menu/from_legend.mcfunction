execute if entity @s[tag=givenLegendFrom,scores={kitTheme=0}] run function du-in:lobby/kitmenu/select/legend_switch_from
item replace entity @s[tag=kitMenu,scores={kitTheme=0}] inventory.23 with minecraft:carrot_on_a_stick[custom_model_data=1003,custom_name='{"text":"Normal Kits","color":"blue","bold":true,"italic":false}']
tag @s[scores={kitTheme=0}] add givenLegendFrom