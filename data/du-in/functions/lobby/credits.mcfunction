#CREDITS GO BACK#
execute if entity @s[tag=credits,nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:8b}]}] run function du-in:lobby/item/back

#CREDITS BACK#
execute if entity @s[scores={back=1..},tag=credits] run function du-in:lobby/actions/credits_back

execute unless entity @s[tag=musicOff] run function du-in:music/lobby/credits
