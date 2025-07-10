#Set number of kits to be displayed
execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 1
#execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 2
execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 3

#Display Kits
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:lobby/kitmenu/menu/zootopia/bogo
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:lobby/kitmenu/menu/zootopia/judy
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:lobby/kitmenu/menu/zootopia/nick

#Add Zootopia menu display icon
execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/zootopia/display

#End function when all kits are listed
execute if entity @s[tag=kitsListed] run tag @s remove kitsListed