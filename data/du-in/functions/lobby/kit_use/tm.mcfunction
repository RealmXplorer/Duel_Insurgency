#Join Teams
    #execute if entity @s[predicate=du-in:lobby/red_hold,scores={lobby=3}] run function du-in:lobby/actions/pick_red
    #execute if entity @s[predicate=du-in:lobby/blue_hold,scores={lobby=3}] run function du-in:lobby/actions/pick_blue
    
    execute if entity @s[predicate=du-in:lobby/red_hold,scores={lobby=2}] run function du-in:lobby/actions/pick_red
    execute if entity @s[predicate=du-in:lobby/blue_hold,scores={lobby=2}] run function du-in:lobby/actions/pick_blue
#Query teams
    #execute if entity @s[predicate=du-in:lobby/query_hold,scores={lobby=3}] run function du-in:lobby/actions/team_query
    execute if entity @s[predicate=du-in:lobby/query_hold,scores={lobby=2}] run function du-in:lobby/actions/team_query
