#SHOP GO BACK#
execute if entity @s[tag=lobby,tag=shop,nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:8b}]}] run function du-in:lobby/item/back

#SHOP BACK#
execute if entity @s[scores={back=1..}] run function du-in:lobby/actions/shop_back

#Music
execute unless entity @s[tag=musicOff] run function du-in:music/lobby/shop