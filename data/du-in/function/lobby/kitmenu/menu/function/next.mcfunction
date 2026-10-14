execute if entity @s[tag=givenNext] run function du-in:lobby/kitmenu/select/next

execute if score @s kitTheme matches 1.. if score @s kitTheme < #main maxThemes run item replace entity @s[tag=kitMenu] inventory.8 with minecraft:barrier[item_name={text:"Next",color:blue,bold:true},item_model="du-in:lobby/next"] 1
#execute unless score @s kitTheme == #main kitTheme run item replace entity @s[tag=kitMenu] inventory.8 with minecraft:barrier[item_name={text:"Next",color:blue,bold:true},item_model="du-in:lobby/next"] 1
#item replace entity @s[tag=kitMenu,scores={kitTheme=1..6}] inventory.0 with minecraft:barrier[item_name={text:"Next",color:blue,bold:true},item_model="du-in:lobby/next"] 1

#item replace entity @s[tag=kitMenu] inventory.0 with minecraft:barrier[item_name={text:"Next",color:blue,bold:true},item_model="du-in:lobby/next"] 1
tag @s add givenNext