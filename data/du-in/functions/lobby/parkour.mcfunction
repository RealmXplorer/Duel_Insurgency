#PARKOUR GO BACK#
execute if entity @s[tag=parkour,tag=!shop,nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:8b}]}] run function du-in:lobby/item/back

#Music
execute unless entity @s[tag=musicOff] run function du-in:music/lobby/parkour