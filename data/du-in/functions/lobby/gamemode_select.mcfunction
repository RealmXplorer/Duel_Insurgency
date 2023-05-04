#Party Leader functions
    execute if entity @s[tag=partyLeader] run function du-in:lobby/gamemodeselect/party_leader_items
    
# Gamemode Select Inventory Items #
    # Shop Item #
        execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:6b}]}] run function du-in:lobby/item/shop

    # Parkour Item #
        execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:8b}]}] run function du-in:lobby/item/parkour

    # Credits Item # (FUNCTIONALITY THROUGH ITEM FUNCTION)
        execute if entity @s[scores={lobby=1},tag=!parkour,tag=!credits,tag=!shop,gamemode=adventure,tag=!working,nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:17b}]}] run function du-in:lobby/item/credits

# Music #
    execute unless entity @s[tag=musicOff] run function du-in:music/lobby/lobby