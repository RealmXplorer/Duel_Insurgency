   #Team Item
        execute unless items entity @s hotbar.2 minecraft:carrot_on_a_stick run function du-in:lobby/gamemode_select/item/team

    # Spam Mode Item # (FUNCTIONALITY RUNS THROUGH ITEM FUNCTION)
        execute unless items entity @s inventory.15 minecraft:cookie run function du-in:lobby/gamemode_select/item/spam

    # Random Mode Item # (FUNCTIONALITY RUNS THROUGH ITEM FUNCTION)
        execute unless items entity @s inventory.11 minecraft:rabbit_foot run function du-in:lobby/gamemode_select/item/random_mode

    # Timed Mode Item # (FUNCTIONALITY RUNS THROUGH ITEM FUNCTION)
        execute unless items entity @s inventory.13 minecraft:iron_ingot run function du-in:lobby/gamemode_select/item/timed_mode

    # Vending Mode Item # (FUNCTIONALITY RUNS THROUGH ITEM FUNCTION)
        execute unless items entity @s inventory.4 minecraft:cocoa_beans run function du-in:lobby/gamemode_select/item/vending_mode

    # Credits Item # (FUNCTIONALITY THROUGH ITEM FUNCTION)
        execute unless items entity @s inventory.8 minecraft:carrot_on_a_stick run function du-in:lobby/gamemode_select/item/credits