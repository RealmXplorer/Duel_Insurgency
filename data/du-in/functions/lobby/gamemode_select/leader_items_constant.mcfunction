   #Team Item
        execute unless items entity @s hotbar.2 minecraft:carrot_on_a_stick run function du-in:lobby/item/team

    # Spam Mode Item # (FUNCTIONALITY RUNS THROUGH ITEM FUNCTION)
        execute unless items entity @s inventory.15 minecraft:cookie run function du-in:lobby/item/spam

    # Random Mode Item # (FUNCTIONALITY RUNS THROUGH ITEM FUNCTION)
        execute unless items entity @s inventory.11 minecraft:rabbit_foot run function du-in:lobby/item/random_mode

    # Timed Mode Item # (FUNCTIONALITY RUNS THROUGH ITEM FUNCTION)
        execute unless items entity @s inventory.13 minecraft:iron_ingot run function du-in:lobby/item/timed_mode

    # Credits Item # (FUNCTIONALITY THROUGH ITEM FUNCTION)
        execute unless items entity @s inventory.8 minecraft:carrot_on_a_stick run function du-in:lobby/item/credits