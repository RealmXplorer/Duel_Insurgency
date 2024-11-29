execute if entity @s[tag=givenPrev] run function du-in:lobby/kitmenu/select/prev
item replace entity @s[tag=kitMenu,scores={kitTheme=2..}] inventory.18 with minecraft:barrier[custom_name='{"text":"Previous","color":"blue","bold":true,"italic":false}',item_model="du-in:lobby/prev"] 1
tag @s add givenPrev