clear @s minecraft:carrot_on_a_stick{countItem:1b}

execute unless score #main mapCountdown matches ..20 if score #main mapCountdown matches 1.. run item replace entity @s[tag=!playing,tag=!countStop,gamemode=adventure] hotbar.0 with minecraft:carrot_on_a_stick{CustomModelData:1035,display:{Name:'{"text":"Pause countdown","color":"red","bold":true,"italic":false}',Lore:['{"text":"Right click to use!","color":"dark_purple"}']},fixedItem:1b,countItem:1b,weaponItem:1b}


#TEAMPLAY NOT ACTIVE#
execute unless score #main mapCountdown matches ..20 if score #main mapCountdown matches 1.. run item replace entity @s[tag=!playing,tag=countStop,gamemode=adventure] hotbar.0 with minecraft:carrot_on_a_stick{CustomModelData:1036,display:{Name:'{"text":"Resume countdown","color":"green","bold":true,"italic":false}',Lore:['{"text":"Right click to use!","color":"dark_purple"}']},fixedItem:1b,weaponItem:1b,countItem:1b}