# Team Specific Items #
    execute if entity @s[scores={lobby=3},nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:3b}]},tag=teamMode] run function du-in:lobby/item/red

    execute if entity @s[scores={lobby=3},nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:5b}]},tag=teamMode] run function du-in:lobby/item/blue

    execute if entity @s[scores={lobby=3},nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:4b}]},tag=teamMode] run function du-in:lobby/item/team_query

#scoreboard players set #main teamOnline 0
#execute if entity @s[tag=teamPicked] run scoreboard players add #main teamOnline 1

#scoreboard players set #main blueOnline 0
#execute if entity @s[tag=team2] run scoreboard players add #main blueOnline 1

#scoreboard players set #main redOnline 0
#execute if entity @s[tag=team1] run scoreboard players add #main redOnline 1

# Tell Player to pick a character #
title @a[tag=!kitPicked,tag=!spect,scores={lobby=3},tag=teamMode,tag=!teamPicked] actionbar {"text":"Pick a team and open inventory to select a character!","color":"red","bold":true}
