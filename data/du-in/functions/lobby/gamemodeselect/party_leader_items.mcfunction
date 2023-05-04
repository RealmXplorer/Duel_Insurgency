    #Team Item
        execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:2b}]}] run function du-in:lobby/item/team

    #Play Item
        execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:4b}]}] run function du-in:lobby/item/play

    #Gamemode Switch Item
        execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:0b}]}] run function du-in:lobby/item/switch

    # Spam Mode Item # (FUNCTIONALITY RUNS THROUGH ITEM FUNCTION)
        execute if entity @s[tag=!working,gamemode=!creative,tag=!subLobby,nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:cookie",Slot:24b}]}] run function du-in:lobby/item/spam

    # Random Mode Item # (FUNCTIONALITY RUNS THROUGH ITEM FUNCTION)
        execute if entity @s[tag=!working,gamemode=!creative,tag=!subLobby,nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:rabbit_foot",Slot:20b}]}] run function du-in:lobby/item/random_mode

    # Timed Mode Item # (FUNCTIONALITY RUNS THROUGH ITEM FUNCTION)
        execute if entity @s[tag=!working,gamemode=!creative,tag=!subLobby,nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:iron_ingot",Slot:22b}]}] run function du-in:lobby/item/timed_mode