    #Play Item
        #execute if entity @s[gamemode=!creative,tag=!playing,tag=!working,tag=!subLobby,tag=!gamemodeSwitch,nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:4b}]}] run function du-in:lobby/item/play
        execute unless items entity @s hotbar.4 minecraft:carrot_on_a_stick run function du-in:lobby/item/play

    #Gamemode Switch Item
        #execute if entity @s[gamemode=!creative,tag=!playing,tag=!working,tag=!subLobby,tag=!gamemodeSwitch,nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:0b}]}] run function du-in:lobby/item/switch
        execute unless items entity @s hotbar.0 minecraft:carrot_on_a_stick run function du-in:lobby/item/switch
