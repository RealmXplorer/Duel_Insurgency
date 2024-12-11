# Gamemode Select Actions #
    #Switch into and out of Teammode
    #execute if items entity @s[tag=!teamMode] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'teamItem'}] run function du-in:lobby/actions/team_enable
    #execute if items entity @s[tag=teamMode] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'teamItem'}] run function du-in:lobby/actions/team_disable

    execute if items entity @s[tag=!teamMode] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'teamItem'}] run function du-in:lobby/actions/team_enable
    execute if items entity @s[tag=teamMode] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'teamItem'}] run function du-in:lobby/actions/team_disable

    #Switch Gamemodes#
    #execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={du-in:'wheelItem'}] run function du-in:lobby/actions/wheel
    execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={du-in:'wheelItem'}] run function du-in:lobby/actions/wheel

    #Start Game
    #execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={du-in:'playItem'}] run function du-in:lobby/actions/play
    execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={du-in:'playItem'}] run function du-in:lobby/actions/play

    #Go to Shop
    #execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={du-in:'shopItem'}] run function du-in:lobby/actions/to_shop
    execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={du-in:'shopItem'}] run function du-in:lobby/actions/to_shop

    #Go to Parkour
    #execute if items entity @s[tag=!parkour,tag=!shop] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'parkourItem'}] run function du-in:lobby/actions/to_parkour
    execute if items entity @s[tag=!parkour,tag=!shop] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'parkourItem'}] run function du-in:lobby/actions/to_parkour

#End Function
    scoreboard players reset @s kitUse
