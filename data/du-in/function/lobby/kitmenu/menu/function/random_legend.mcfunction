execute if entity @s[tag=givenRandKit] run function du-in:lobby/kitmenu/select/random_legend

item replace entity @s[tag=kitMenu] inventory.19 with minecraft:barrier[item_model="du-in:lobby/leg_random",item_name={text:"Random Legendary Kit",color:gold,bold:true}]
tag @s add givenRandKit