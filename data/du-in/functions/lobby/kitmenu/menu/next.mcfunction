execute if entity @s[tag=givenNext] run function du-in:lobby/kitmenu/select/next
item replace entity @s[tag=kitMenu,scores={kitTheme=1..4}] inventory.0 with minecraft:barrier[custom_name='{"text":"Next","color":"blue","bold":true,"italic":false}',custom_model_data=102] 1
tag @s add givenNext