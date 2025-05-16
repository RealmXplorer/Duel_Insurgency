execute if entity @s[tag=givenPrev] run function du-in:lobby/kitmenu/select/prev
item replace entity @s[tag=kitMenu,scores={kitTheme=2..}] inventory.18 with minecraft:barrier[item_name={text:"Previous",color:blue,bold:true},item_model="du-in:lobby/prev"] 1
tag @s add givenPrev