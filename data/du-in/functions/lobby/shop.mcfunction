#SHOP GO BACK#
execute if entity @s[tag=lobby,tag=shop,nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:8b}]}] run function du-in:lobby/item/back

execute if entity @s[tag=skinMenu] run function du-in:other/skins/skin_menu/common

#SHOP BACK#
execute if entity @s[scores={back=1..}] run function du-in:lobby/actions/shop_back

title @s actionbar {"text":"Open inventory to change skins!","color":"green","bold":true}

#Music
execute unless entity @s[tag=musicOff] run function du-in:music/lobby/shop