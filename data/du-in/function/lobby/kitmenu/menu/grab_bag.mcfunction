#Set number of kits to be displayed
execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 6

#Display Kits
#execute unless items entity @s inventory.10 minecraft:player_head run function du-in:lobby/kitmenu/menu/grabbag/kratos

#execute unless items entity @s inventory.8 minecraft:player_head run function du-in:lobby/kitmenu/menu/grabbag/avatar
#execute unless items entity @s inventory.7 minecraft:player_head run function du-in:lobby/kitmenu/menu/grabbag/sauron
execute unless items entity @s inventory.6 minecraft:player_head run function du-in:lobby/kitmenu/menu/grabbag/cuphead
execute unless items entity @s inventory.5 minecraft:player_head run function du-in:lobby/kitmenu/menu/grabbag/gumball
execute unless items entity @s inventory.4 minecraft:player_head run function du-in:lobby/kitmenu/menu/grabbag/nick
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:lobby/kitmenu/menu/grabbag/clairen
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:lobby/kitmenu/menu/grabbag/yharim
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:lobby/kitmenu/menu/grabbag/springtrap

#Add Grab Bag menu display icon
execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/grabbag/display

#End function when all kits are listed
execute if entity @s[tag=kitsListed] run tag @s remove kitsListed