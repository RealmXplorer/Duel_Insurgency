#Join Teams
    execute if items entity @s[scores={lobby=2}] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'redItem'}] run function du-in:lobby/team_select/actions/pick_red
    execute if items entity @s[scores={lobby=2}] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'blueItem'}] run function du-in:lobby/team_select/actions/pick_blue

#Query teams
    execute if items entity @s[scores={lobby=2}] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'queryItem'}] run function du-in:lobby/team_select/actions/team_query
    execute if items entity @s[scores={lobby=2}] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'sortItem'}] run function du-in:lobby/team_select/actions/auto_sort_init
    execute if items entity @s[scores={lobby=2}] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'clearItem'}] run function du-in:lobby/team_select/actions/reset_teams