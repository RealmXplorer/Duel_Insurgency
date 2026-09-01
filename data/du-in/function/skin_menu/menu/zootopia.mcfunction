#Set number of kits to be displayed
execute if entity @s[tag=skinsListed] run scoreboard players set @s skinList 4

#Display Kits
execute unless items entity @s inventory.4 minecraft:player_head run function du-in:kit/pawbert/menu/skins/display
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:kit/bogo/menu/skins/display
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:kit/judy/menu/skins/display
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:kit/nick/menu/skins/display

#Add Zootopia menu display icon
execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/zootopia/display

#End function when all kits are listed
execute if entity @s[tag=skinsListed] run tag @s remove skinsListed