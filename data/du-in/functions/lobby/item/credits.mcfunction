execute if entity @s[tag=givenCredits] run function du-in:lobby/actions/to_credits
clear @s minecraft:carrot_on_a_stick{CustomModelData:1008}
item replace entity @s[tag=!parkour,tag=!shop,gamemode=!creative,tag=!credits,tag=!playing,tag=!working] inventory.8 with minecraft:carrot_on_a_stick{CustomModelData:1008,display:{Name:'{"text":"Credits","color":"blue","bold":true,"italic":false}',Lore:['{"text":"Click to go to Credits!","color":"dark_purple"}']},fixedItem:1b,weaponItem:1b}
tag @s add givenCredits