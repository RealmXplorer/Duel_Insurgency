# Gamemode Select Actions #

    # Gamemode Select Wheel Functionality #
        execute if entity @s[scores={gamemodeSwitch=1..}] run function du-in:lobby/actions/wheel

    # Play Button Functionality #
        execute if entity @s[scores={play=1..}] run function du-in:lobby/actions/play

    # Teleport to Shop #
        execute if entity @s[scores={toShop=1..},tag=!shop] run function du-in:lobby/actions/to_shop

    # Enable or Disable Team mode #
        execute if entity @s[scores={teamPlayMode=1..},tag=partyLeader] run function du-in:lobby/actions/team_play

    # Teleport to Parkour #
        execute if entity @s[scores={toParkour=1..}] run function du-in:lobby/actions/to_parkour

    

# Gamemode Select Inventory Items #
    # Spam Mode Item # (FUNCTIONALITY RUNS THROUGH ITEM FUNCTION)
        execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:cookie",Slot:24b}]},tag=!working,gamemode=!creative,tag=partyLeader,tag=!shop,tag=!parkour] run function du-in:lobby/item/spam
        #execute if entity @s[advancements={du-in:lobby/cookie=false},tag=!working,gamemode=!creative,scores={lobby=1},tag=!startgame,tag=!playing,tag=partyLeader,tag=!parkour,tag=!credits,tag=!shop] run function du-in:lobby/item/spam

    # Random Mode Item # (FUNCTIONALITY RUNS THROUGH ITEM FUNCTION)
        execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:rabbit_foot",Slot:20b}]},tag=!working,gamemode=!creative,tag=partyLeader,tag=!shop,tag=!parkour] run function du-in:lobby/item/random_mode

    # Team Mode Item #
        execute if entity @s[tag=partyLeader,nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:2b}]}] run function du-in:lobby/item/team

    # Shop Item #
        execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:6b}]}] run function du-in:lobby/item/shop
    #scores={lobby=1},
    # Play Item #
        execute if entity @s[tag=partyLeader,nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:4b}]}] run function du-in:lobby/item/play

    # Gamemode Wheel Item #
        execute if entity @s[tag=partyLeader,nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:0b}]}] run function du-in:lobby/item/switch

    # Parkour Item #
        execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:8b}]}] run function du-in:lobby/item/parkour

    # Credits Item # (FUNCTIONALITY THROUGH ITEM FUNCTION)
        execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:17b}]},scores={lobby=1},tag=!parkour,tag=!credits,tag=!shop,gamemode=adventure,tag=!working] run function du-in:lobby/item/credits

    # Match Results Item #
        #execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:writable_book",Slot:9b}]},tag=!working,gamemode=!creative,tag=!parkour,tag=!credits,tag=!shop,tag=!playing,scores={lobby=1}] run function du-in:lobby/item/stats



# Music #
    execute unless entity @s[tag=musicOff] run function du-in:music/lobby/lobby