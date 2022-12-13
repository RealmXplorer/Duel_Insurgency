# Gamemode Select Actions #
    #Switch into and out of Teammode
    execute if entity @s[tag=partyLeader,predicate=du-in:lobby/team_hold] run scoreboard players add @s teamPlayMode 1
    
    #Switch Gamemodes#
    execute if entity @s[tag=partyLeader,predicate=du-in:lobby/wheel_hold] run scoreboard players add @s gamemodeSwitch 1

    #Start Game
    execute if entity @s[tag=partyLeader,predicate=du-in:lobby/play_hold] run scoreboard players add @s play 1

    #Go to Shop
    execute if entity @s[tag=!shop,predicate=du-in:lobby/shop_hold] run scoreboard players add @s toShop 1

    #Go Back from Shop
    execute if entity @s[tag=shop,scores={kitUse=1..},predicate=du-in:lobby/back_hold,tag=!parkour,tag=!credits] run scoreboard players add @s back 1

    #Go to Parkour
    execute if entity @s[tag=!parkour,tag=!shop,predicate=du-in:lobby/parkour_hold] run scoreboard players add @s toParkour 1

    #Go Back from Parkour
    execute if entity @s[tag=!shop,tag=parkour,scores={kitUse=1..},predicate=du-in:lobby/back_hold] run scoreboard players add @s back 1
    
    #Go Back from Credits
    execute if entity @s[tag=credits,scores={kitUse=1..},predicate=du-in:lobby/back_hold,tag=!parkour,tag=!shop] run scoreboard players add @s back 1

    scoreboard players reset @s kitUse