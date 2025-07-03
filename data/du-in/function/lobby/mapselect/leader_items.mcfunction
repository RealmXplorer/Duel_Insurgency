# Map Select Items #
    # Give Back-Item #
        execute unless items entity @s hotbar.8 minecraft:carrot_on_a_stick run function du-in:lobby/back_item

    # Give Countdown Item #
        execute unless items entity @s hotbar.0 minecraft:carrot_on_a_stick run function du-in:lobby/mapselect/item/count

    # Give Quickplay Item #
        execute unless entity @a[tag=partyLeader,tag=specialEvent] unless items entity @s hotbar.4 minecraft:carrot_on_a_stick run function du-in:lobby/mapselect/item/quick