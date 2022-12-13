#execute if entity @s[tag=givenPark] run function du-in:lobby/actions/to_parkour
clear @s minecraft:carrot_on_a_stick{CustomModelData:1005}
item replace entity @s[tag=!credits,gamemode=!creative,tag=!playing,tag=!working,tag=!shop,tag=!parkour] hotbar.8 with minecraft:carrot_on_a_stick{CustomModelData:1005,display:{Name:'{"text":"Parkour","color":"blue","bold":true,"italic":false}',Lore:['{"text":"Click to go to parkour!","color":"dark_purple"}']},fixedItem:1b,weaponItem:1b,parkourItem:1b}
#tag @s add givenPark