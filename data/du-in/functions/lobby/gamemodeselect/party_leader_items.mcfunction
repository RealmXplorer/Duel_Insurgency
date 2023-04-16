    #Team Item
        execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:2b}]}] run function du-in:lobby/item/team
    #Play Item
        execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:4b}]}] run function du-in:lobby/item/play
    #Gamemode Switch Item
        execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:0b}]}] run function du-in:lobby/item/switch
