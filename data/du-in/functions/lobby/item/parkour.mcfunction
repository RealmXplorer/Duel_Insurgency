#execute if entity @s[tag=givenPark] run function du-in:lobby/actions/to_parkour
clear @s minecraft:carrot_on_a_stick{parkourItem:1b}
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!credits,gamemode=!creative,tag=!playing,tag=!working,tag=!subLobby] hotbar.8 with minecraft:carrot_on_a_stick{CustomModelData:1005,display:{Name:'{"text":"Parkour","color":"blue","bold":true,"italic":false}',Lore:['{"text":"Click to go to parkour!","color":"dark_purple"}']},fixedItem:1b,weaponItem:1b,parkourItem:1b}
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!credits,gamemode=!creative,tag=!playing,tag=!working,tag=!subLobby] hotbar.8 with minecraft:carrot_on_a_stick{CustomModelData:1046,display:{Name:'{"text":"NO ESCAPE","color":"dark_gray","bold":true,"italic":false}',Lore:['{"text":"Click to go to parkour!","color":"dark_purple"}']},fixedItem:1b,weaponItem:1b,parkourItem:1b}

#tag @s add givenPark