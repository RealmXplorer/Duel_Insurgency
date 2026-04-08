#Set number of kits to be displayed
execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 4

#Display Kits
execute unless items entity @s inventory.4 minecraft:player_head run function du-in:kit/yoda/menu/display
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:kit/palps/menu/display
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:kit/vader/menu/display
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:kit/kylo/menu/display

#Add Star Wars menu display icon
execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/starwars/display

#End function when all kits are listed
execute if entity @s[tag=kitsListed] run tag @s remove kitsListed