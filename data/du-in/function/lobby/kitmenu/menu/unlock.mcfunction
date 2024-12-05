#Set number of kits to be displayed
execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 5

#Display Kits
execute unless items entity @s inventory.5 minecraft:player_head run function du-in:lobby/kitmenu/menu/unlock/paz
execute unless items entity @s inventory.4 minecraft:player_head run function du-in:lobby/kitmenu/menu/unlock/jerma
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:lobby/kitmenu/menu/unlock/runza
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:lobby/kitmenu/menu/unlock/impostor
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:lobby/kitmenu/menu/unlock/saac

#Add "from Legendary" menu icon
execute unless items entity @s inventory.23 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/function/from_legend

#Add Legendary menu display icon
execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/unlock/display

#End function when all kits are listed
execute if entity @s[tag=kitsListed] run tag @s remove kitsListed