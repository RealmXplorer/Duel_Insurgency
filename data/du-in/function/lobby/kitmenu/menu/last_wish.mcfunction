#Set number of kits to be displayed
execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 3

#Display Kits
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:lobby/kitmenu/menu/last_wish/death
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:lobby/kitmenu/menu/last_wish/jack_horner
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:lobby/kitmenu/menu/last_wish/puss

#Add Last Wish menu display icon
execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/last_wish/display

#End function when all kits are listed
execute if entity @s[tag=kitsListed] run tag @s remove kitsListed