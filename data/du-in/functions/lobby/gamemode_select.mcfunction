##MANY OF THESE NOW RUN IN THE SCHEDULED FUNCTION
# Gamemode Select Inventory Items #
        #Team Item
        execute unless items entity @s[tag=partyLeader] hotbar.2 minecraft:carrot_on_a_stick run function du-in:lobby/item/team

    # Spam Mode Item # (FUNCTIONALITY RUNS THROUGH ITEM FUNCTION)
        execute unless items entity @s[tag=partyLeader,tag=!working,gamemode=!creative,tag=!subLobby] inventory.15 minecraft:cookie run function du-in:lobby/item/spam

    # Random Mode Item # (FUNCTIONALITY RUNS THROUGH ITEM FUNCTION)
        execute unless items entity @s[tag=partyLeader,tag=!working,gamemode=!creative,tag=!subLobby] inventory.11 minecraft:rabbit_foot run function du-in:lobby/item/random_mode

    # Timed Mode Item # (FUNCTIONALITY RUNS THROUGH ITEM FUNCTION)
        execute unless items entity @s[tag=partyLeader,tag=!working,gamemode=!creative,tag=!subLobby] inventory.13 minecraft:iron_ingot run function du-in:lobby/item/timed_mode

    # Credits Item # (FUNCTIONALITY THROUGH ITEM FUNCTION)
        execute unless items entity @s[tag=partyLeader,tag=!working,gamemode=!creative,tag=!subLobby] inventory.8 minecraft:carrot_on_a_stick run function du-in:lobby/item/credits

# Music #
    execute unless entity @s[tag=musicOff] unless score #main pylonsDestroyed matches 3 run function du-in:music/lobby/lobby
