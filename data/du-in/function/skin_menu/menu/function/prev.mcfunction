execute if entity @s[tag=givenSkinPrev] run function du-in:skin_menu/actions/prev
item replace entity @s[scores={skinTheme=2..}] inventory.18 with minecraft:barrier[item_name={text:"Previous",color:blue,bold:true},item_model="du-in:lobby/prev"] 1
tag @s add givenSkinPrev