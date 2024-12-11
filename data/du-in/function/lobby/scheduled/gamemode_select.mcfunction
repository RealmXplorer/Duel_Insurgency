#Party Leader Items 
    execute if entity @s[tag=partyLeader] run function du-in:lobby/gamemode_select/leader_items_scheduled
    
# Gamemode Select Inventory Items #
    # Shop Item #
        #execute unless items entity @s hotbar.6 minecraft:carrot_on_a_stick[custom_data={du-in:'shopItem'}] run function du-in:lobby/item/shop
        execute unless items entity @s hotbar.6 minecraft:carrot_on_a_stick[custom_data={du-in:'shopItem'}] run function du-in:lobby/item/shop

    # Parkour Item #
        #execute unless items entity @s hotbar.8 minecraft:carrot_on_a_stick[custom_data={du-in:'parkourItem'}] run function du-in:lobby/item/parkour
        execute unless items entity @s hotbar.8 minecraft:carrot_on_a_stick[custom_data={du-in:'parkourItem'}] run function du-in:lobby/item/parkour
