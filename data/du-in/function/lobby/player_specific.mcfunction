# Lobby Specific Functions #
    # Gamemode Select Functions #
        execute if entity @s[scores={lobby=1},tag=!subLobby] run function du-in:lobby/gamemode_select

    # Credits Functions #
        execute if entity @s[tag=credits] run function du-in:lobby/credits

    # Shop Functions #
        execute if entity @s[tag=shop] run function du-in:lobby/shop
    
    # Parkour Functions #
        execute if entity @s[tag=parkour,gamemode=adventure] run function du-in:lobby/parkour
        
    # Map Select Functions #
        execute if entity @s[scores={lobby=2}] run function du-in:lobby/map_select