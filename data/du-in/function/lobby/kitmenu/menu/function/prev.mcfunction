execute if entity @s[tag=givenPrev] run function du-in:lobby/kitmenu/select/prev
execute if score @s kitTheme matches 2.. run item replace entity @s[tag=kitMenu] inventory.26 with minecraft:barrier[item_name={text:"Previous",color:blue,bold:true},item_model="du-in:lobby/prev"] 1

execute if entity @s[tag=skinMenu] run function du-in:lobby/scheduled/shop

tag @s add givenPrev