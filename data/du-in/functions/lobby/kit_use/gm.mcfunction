# Gamemode Select Actions #
    #Switch into and out of Teammode
    execute if entity @s[tag=partyLeader,predicate=du-in:lobby/team_hold,tag=!teamMode] run function du-in:lobby/actions/team_enable
    execute if entity @s[tag=partyLeader,predicate=du-in:lobby/team_hold,tag=teamMode] run function du-in:lobby/actions/team_disable

    #Switch Gamemodes#
    execute if entity @s[tag=partyLeader,predicate=du-in:lobby/wheel_hold] run function du-in:lobby/actions/wheel

    #Start Game
    execute if entity @s[tag=partyLeader,predicate=du-in:lobby/play_hold] run function du-in:lobby/actions/play

    #Go to Shop
    execute if entity @s[tag=!shop,predicate=du-in:lobby/shop_hold] run function du-in:lobby/actions/to_shop

    #Go to Parkour
    execute if entity @s[tag=!parkour,tag=!shop,predicate=du-in:lobby/parkour_hold] run function du-in:lobby/actions/to_parkour

    #Go Back from Shop
    execute if entity @s[tag=shop,scores={kitUse=1..},predicate=du-in:lobby/back_hold,tag=!parkour,tag=!credits] run function du-in:lobby/actions/shop_back


    #Go Back from Parkour
    execute if entity @s[tag=!shop,tag=parkour,scores={kitUse=1..},predicate=du-in:lobby/back_hold] run function du-in:lobby/actions/parkour_back

    #Go Back from Credits
    execute if entity @s[tag=credits,scores={kitUse=1..},predicate=du-in:lobby/back_hold,tag=!parkour,tag=!shop] run function du-in:lobby/actions/credits_back

    scoreboard players reset @s kitUse