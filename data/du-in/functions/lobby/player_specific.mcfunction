# Lobby Sidebar #
    execute if entity @s[scores={lobby=1..}] unless entity @a[tag=partyLeader,tag=sidebarDisable] unless score #main pylonsDestroyed matches 3 unless entity @a[tag=playing] unless entity @a[tag=working] run function du-in:lobby/misc/sidebar



# Lobby Specific Functions #
    # Gamemode Select Functions #
        execute if entity @s[scores={lobby=1},tag=!subLobby] run function du-in:lobby/gamemode_select

    # Credits Functions #
        execute if entity @s[tag=credits] run function du-in:lobby/credits

    # Shop Functions #
        execute if entity @s[tag=shop] run function du-in:lobby/shop
    
    # Parkour Functions #
        execute if entity @s[tag=parkour] run function du-in:lobby/parkour
        
    # Map Select Functions #
        execute if entity @s[scores={lobby=2}] run function du-in:lobby/map_select

        #execute if entity @s[scores={kitUse=1..,lobby=1}] run function du-in:lobby/kit_use/gm