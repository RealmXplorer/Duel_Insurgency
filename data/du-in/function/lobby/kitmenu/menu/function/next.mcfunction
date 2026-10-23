# execute if entity @s[tag=givenNext] run function du-in:lobby/kitmenu/select/next
execute if entity @s[tag=!renderingKit,tag=!renderingLegend] run function du-in:lobby/kitmenu/select/next

execute if score @s kitTheme matches 1.. if score @s kitTheme < #main maxThemes run item replace entity @s[tag=kitMenu] inventory.8 with minecraft:barrier[item_name={text:"Next",color:blue,bold:true},item_model="du-in:lobby/next"] 1
execute if entity @s[tag=skinMenu] run function du-in:lobby/scheduled/shop

#tag @s add givenNext