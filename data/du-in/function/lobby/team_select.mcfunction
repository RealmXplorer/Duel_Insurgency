# Team Specific Items #
    execute unless items entity @s hotbar.1 minecraft:carrot_on_a_stick run function du-in:lobby/team_select/item/auto_sort
    execute unless items entity @s hotbar.3 minecraft:carrot_on_a_stick run function du-in:lobby/team_select/item/red
    execute unless items entity @s hotbar.4 minecraft:carrot_on_a_stick run function du-in:lobby/team_select/item/team_query
    execute unless items entity @s hotbar.5 minecraft:carrot_on_a_stick run function du-in:lobby/team_select/item/blue
    execute unless items entity @s hotbar.7 minecraft:carrot_on_a_stick run function du-in:lobby/team_select/item/reset_teams

# Tell Player to pick a character #
title @s[tag=!kitPicked,tag=!spectating,tag=!teamPicked] actionbar {text:"Pick a team and open inventory to select a character!",color:red,bold:true}

execute if entity @s[tag=partyLeader,tag=sort] if score #main teamOnline < #main online run function du-in:lobby/team_select/actions/auto_sort