    #Go Back from Parkour
    execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={du-in:'backItem'}] run function du-in:lobby/actions/parkour/back

    #Restart Parkour
    execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={du-in:'restartItem'}] run function du-in:lobby/actions/parkour/restart

#End Function
    scoreboard players reset @s kitUse