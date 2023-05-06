##MANY OF THESE NOW RUN IN THE SCHEDULED FUNCTION
# Gamemode Select Inventory Items #
        #Team Item
        execute if entity @s[tag=partyLeader,nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:2b}]}] run function du-in:lobby/item/team

    # Spam Mode Item # (FUNCTIONALITY RUNS THROUGH ITEM FUNCTION)
        execute if entity @s[tag=partyLeader,tag=!working,gamemode=!creative,tag=!subLobby,nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:cookie",Slot:24b}]}] run function du-in:lobby/item/spam

    # Random Mode Item # (FUNCTIONALITY RUNS THROUGH ITEM FUNCTION)
        execute if entity @s[tag=partyLeader,tag=!working,gamemode=!creative,tag=!subLobby,nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:rabbit_foot",Slot:20b}]}] run function du-in:lobby/item/random_mode

    # Timed Mode Item # (FUNCTIONALITY RUNS THROUGH ITEM FUNCTION)
        execute if entity @s[tag=partyLeader,tag=!working,gamemode=!creative,tag=!subLobby,nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:iron_ingot",Slot:22b}]}] run function du-in:lobby/item/timed_mode

    # Credits Item # (FUNCTIONALITY THROUGH ITEM FUNCTION)
        execute if entity @s[scores={lobby=1},tag=!parkour,tag=!credits,tag=!shop,gamemode=adventure,tag=!working,nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:17b}]}] run function du-in:lobby/item/credits

# Music #
    execute unless entity @s[tag=musicOff] run function du-in:music/lobby/lobby