#Set number of kits to be displayed
execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 7

#Display Kits
execute unless items entity @s inventory.7 minecraft:player_head run function du-in:kit/beetlejuice/menu/display
execute unless items entity @s inventory.6 minecraft:player_head run function du-in:kit/jack_black/menu/display
execute unless items entity @s inventory.5 minecraft:player_head run function du-in:kit/paz/menu/display
execute unless items entity @s inventory.4 minecraft:player_head run function du-in:kit/jerma/menu/display
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:kit/runza/menu/display
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:kit/impostor/menu/display
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:kit/saac/menu/display

#Add "from Legendary" menu icon
execute unless items entity @s inventory.23 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/function/from_legend

#Add Legendary menu display icon
execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/unlock/display

#End function when all kits are listed
execute if entity @s[tag=kitsListed] run tag @s remove kitsListed