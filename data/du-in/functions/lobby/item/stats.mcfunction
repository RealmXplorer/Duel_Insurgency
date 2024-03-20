execute if entity @s[tag=givenStats] run function du-in:lobby/actions/stats
clear @s minecraft:writable_book
item replace entity @s[tag=lobby,gamemode=!creative,tag=!playing,tag=!working,tag=!parkour] inventory.0 with minecraft:writable_book[custom_name='{"text":"Match Results","color":"aqua","bold":true,"italic":false}',lore=['{"text":"Click to see last game\'s results!","color":"dark_purple"}']]
tag @s add givenStats