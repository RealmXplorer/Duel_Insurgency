# Lobby Status Effects #
    #effect give @s minecraft:instant_health 100 100 true
    
    #If a player is working, up their attack damage attribute
    execute if entity @s[tag=working] run attribute @s minecraft:generic.attack_damage base set 1



# Lobby Sidebar #
    execute if entity @s[scores={lobby=1..}] unless entity @a[tag=partyLeader,tag=sidebarDisable] unless entity @a[tag=playing] unless entity @a[tag=working] run function du-in:lobby/misc/sidebar



# Lobby Specific Functions #
    # Credits Functions #
        execute if entity @s[tag=credits] run function du-in:lobby/credits

    # Gamemode Select Functions #
        execute if entity @s[scores={lobby=1},tag=!shop,tag=!credits,tag=!parkour] run function du-in:lobby/gamemode_select

    # Shop Functions #
        execute if entity @s[tag=shop] run function du-in:lobby/shop
    
    # Parkour Functions #
        execute if entity @s[tag=parkour] run function du-in:lobby/parkour
        
    # Map Select Functions #
        execute if entity @s[scores={lobby=3}] run function du-in:lobby/map_select

        execute if entity @s[scores={kitUse=1..,lobby=1}] run function du-in:lobby/kit_use/gm