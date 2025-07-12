execute if entity @s[tag=givenRandKit] run function du-in:lobby/kitmenu/select/random

item replace entity @s[tag=kitMenu] inventory.19 with minecraft:barrier[item_name={text:"Random Kit",color:dark_green,bold:true},item_model="du-in:lobby/random"]
tag @s add givenRandKit