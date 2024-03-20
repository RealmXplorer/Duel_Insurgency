#PARKOUR GO BACK#
#execute if entity @s[tag=parkour,tag=!shop,nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:8b}]}] run function du-in:lobby/item/back
execute if entity @s[tag=parkour,tag=!shop,tag=!credits] unless items entity @s hotbar.8 minecraft:carrot_on_a_stick[custom_data={du-in:'backItem'}] run function du-in:lobby/item/back
