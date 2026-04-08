#Set number of kits to be displayed
#execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 9
execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 10

#Display Kits
execute unless items entity @s inventory.11 minecraft:player_head run function du-in:kit/knight/menu/display
execute unless items entity @s inventory.10 minecraft:player_head run function du-in:kit/kratos/menu/display

execute unless items entity @s inventory.8 minecraft:player_head run function du-in:kit/avatar/menu/display
execute unless items entity @s inventory.7 minecraft:player_head run function du-in:kit/sauron/menu/display
execute unless items entity @s inventory.6 minecraft:player_head run function du-in:kit/cinder/menu/display
execute unless items entity @s inventory.5 minecraft:player_head run function du-in:kit/gumball/menu/display
execute unless items entity @s inventory.4 minecraft:player_head run function du-in:kit/cuphead/menu/display
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:kit/clairen/menu/display
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:kit/yharim/menu/display
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:kit/springtrap/menu/display

#Add Grab Bag menu display icon
execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/grabbag/display

#End function when all kits are listed
execute if entity @s[tag=kitsListed] run tag @s remove kitsListed