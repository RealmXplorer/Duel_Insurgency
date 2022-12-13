execute if entity @s[tag=givenQuery] run function du-in:lobby/actions/team_query
clear @s minecraft:carrot_on_a_stick{CustomModelData:1037}
item replace entity @s[gamemode=!creative,tag=!playing,tag=!working,tag=teamMode] hotbar.4 with minecraft:carrot_on_a_stick{CustomModelData:1037,display:{Name:'{"text":"Team Query","color":"gray","bold":true,"italic":false}',Lore:['{"text":"Right click to see teams!","color":"dark_purple"}']},fixedItem:1b,weaponItem:1b,queryItem:1b}
tag @s add givenQuery