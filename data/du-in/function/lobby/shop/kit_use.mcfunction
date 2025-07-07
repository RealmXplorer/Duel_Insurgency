    #Go Back from Shop
    execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={du-in:'gameSettingItem'}] run function du-in:lobby/shop/actions/to_game_settings

    execute if items entity @s[tag=!gameSettings] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'backItem'}] run function du-in:lobby/shop/actions/back
    execute if items entity @s[tag=gameSettings] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'backItem'}] run function du-in:lobby/shop/actions/game_settings_back


#End Function
    scoreboard players reset @s kitUse