# Team Specific Items #
    execute unless items entity @s hotbar.3 minecraft:carrot_on_a_stick run function du-in:lobby/item/red
    execute unless items entity @s hotbar.4 minecraft:carrot_on_a_stick run function du-in:lobby/item/team_query
    execute unless items entity @s hotbar.5 minecraft:carrot_on_a_stick run function du-in:lobby/item/blue

# Tell Player to pick a character #
#title @a[tag=!kitPicked,tag=!spect,tag=!teamPicked] actionbar {text:"Pick a team and open inventory to select a character!",color:red,bold:true}
title @a[tag=!kitPicked,tag=!spectating,tag=!teamPicked] actionbar {text:"Pick a team and open inventory to select a character!",color:red,bold:true}
