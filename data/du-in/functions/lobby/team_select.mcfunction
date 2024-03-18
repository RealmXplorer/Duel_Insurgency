# Team Specific Items #
    #execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:3b}]}] run function du-in:lobby/item/red
    execute unless items entity @s hotbar.3 minecraft:carrot_on_a_stick run function du-in:lobby/item/red

    #execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:4b}]}] run function du-in:lobby/item/team_query
    execute unless items entity @s hotbar.4 minecraft:carrot_on_a_stick run function du-in:lobby/item/team_query

    #execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:5b}]}] run function du-in:lobby/item/blue
    execute unless items entity @s hotbar.5 minecraft:carrot_on_a_stick run function du-in:lobby/item/blue

# Tell Player to pick a character #
title @a[tag=!kitPicked,tag=!spect,tag=!teamPicked] actionbar {"text":"Pick a team and open inventory to select a character!","color":"red","bold":true}

