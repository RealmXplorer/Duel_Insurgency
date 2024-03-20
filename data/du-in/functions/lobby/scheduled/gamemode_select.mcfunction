#Party Leader Items 
    execute if entity @s[tag=partyLeader] run function du-in:lobby/gamemodeselect/party_leader_items
    
# Gamemode Select Inventory Items #
    # Shop Item #
        #execute if entity @s[gamemode=!creative,tag=!playing,tag=!working,tag=!subLobby,nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:6b}]}] run function du-in:lobby/item/shop

        execute unless items entity @s[gamemode=!creative,tag=!playing,tag=!working,tag=!subLobby] hotbar.6 minecraft:carrot_on_a_stick[custom_data={du-in:'shopItem'}] run function du-in:lobby/item/shop

    # Parkour Item #
        #execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:8b}]}] run function du-in:lobby/item/parkour
        execute unless items entity @s[tag=!subLobby] hotbar.8 minecraft:carrot_on_a_stick[custom_data={du-in:'parkourItem'}] run function du-in:lobby/item/parkour
