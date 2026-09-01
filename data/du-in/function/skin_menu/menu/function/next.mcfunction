execute if entity @s[tag=givenSkinNext] run function du-in:skin_menu/actions/next
item replace entity @s[scores={skinTheme=1..5}] inventory.0 with minecraft:barrier[item_name={text:"Next",color:blue,bold:true},item_model="du-in:lobby/next"] 1
tag @s add givenSkinNext