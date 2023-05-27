clear @s minecraft:carrot_on_a_stick{playItem:1b}

execute unless score #main pylonsDestroyed matches 3.. unless score #main lobbyTheme matches 1.. run item replace entity @s hotbar.4 with minecraft:carrot_on_a_stick{CustomModelData:1015,display:{Name:'{"text":"Play","color":"green","bold":true,"italic":false}',Lore:['{"text":"Right click to use!","color":"dark_purple"}']},fixedItem:1b,weaponItem:1b,playItem:1b}
execute unless score #main pylonsDestroyed matches 3.. if score #main lobbyTheme matches 1.. run function du-in:lobby/item/holiday/holiplay
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s hotbar.4 with minecraft:carrot_on_a_stick{CustomModelData:1041,display:{Name:'{"text":"RUN","color":"gray","bold":true,"italic":false}',Lore:['{"text":"Right click to use!","color":"dark_purple"}']},fixedItem:1b,weaponItem:1b,playItem:1b}
