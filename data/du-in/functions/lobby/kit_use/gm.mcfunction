# Gamemode Select Actions #
    #Switch into and out of Teammode
    execute if items entity @s[tag=!teamMode] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'teamItem'}] run function du-in:lobby/actions/team_enable
    execute if items entity @s[tag=teamMode] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'teamItem'}] run function du-in:lobby/actions/team_disable

    #Switch Gamemodes#
    execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={du-in:'wheelItem'}] run function du-in:lobby/actions/wheel

    #Start Game
    execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={du-in:'playItem'}] run function du-in:lobby/actions/play

    #Go to Shop
    execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={du-in:'shopItem'}] run function du-in:lobby/actions/to_shop

    #Go to Parkour
    execute if items entity @s[tag=!parkour,tag=!shop] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'parkourItem'}] run function du-in:lobby/actions/to_parkour

    #Go Back from Shop
    execute if items entity @s[tag=shop,tag=!parkour,tag=!credits] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'backItem'}] run function du-in:lobby/actions/shop_back

    #Go Back from Parkour
    execute if items entity @s[tag=!shop,tag=parkour] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'backItem'}] run function du-in:lobby/actions/parkour_back

    #Go Back from Credits
    execute if items entity @s[tag=credits,tag=!parkour,tag=!shop] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'backItem'}] run function du-in:lobby/actions/credits_back

#End Function
    scoreboard players reset @s kitUse
