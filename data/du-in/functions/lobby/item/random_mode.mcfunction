execute if entity @s[tag=givenRandom] run function du-in:lobby/actions/random_mode
clear @s minecraft:rabbit_foot
item replace entity @s[gamemode=!creative,tag=!playing,tag=!working] inventory.11 with minecraft:rabbit_foot{display:{Name:'{"text":"Random kit on Death","color":"light_purple","bold":true,"italic":false}',Lore:['{"text":"Click to respawn with random kit every life!","color":"dark_purple"}']},CustomModelData:100,fixedItem:1b,weaponItem:1b}
tag @s add givenRandom