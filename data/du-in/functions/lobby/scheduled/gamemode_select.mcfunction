#Party Leader Items 
    execute if entity @s[tag=partyLeader] run function du-in:lobby/gamemodeselect/party_leader_items
    
# Gamemode Select Inventory Items #
    # Shop Item #
        execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:6b}]}] run function du-in:lobby/item/shop

    # Parkour Item #
        execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:8b}]}] run function du-in:lobby/item/parkour