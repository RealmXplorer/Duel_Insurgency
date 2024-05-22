#Join Teams
    execute if items entity @s[scores={lobby=2}] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'redItem'}] run function du-in:lobby/actions/pick_red
    execute if items entity @s[scores={lobby=2}] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'blueItem'}] run function du-in:lobby/actions/pick_blue

#Query teams
    execute if items entity @s[scores={lobby=2}] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'queryItem'}] run function du-in:lobby/actions/team_query