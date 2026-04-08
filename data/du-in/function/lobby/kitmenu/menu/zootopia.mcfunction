#Set number of kits to be displayed
execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 4
#execute if entity @s[tag=kitsListed] store result score @s kitList run data get storage du-in:zootopia list.size

#execute store result storage du-in:zootopia list.current int 1 run scoreboard players get @s kitList
#function du-in:lobby/kitmenu/menu/zootopia/find with storage du-in:zootopia list

#Display Kits
execute unless items entity @s inventory.4 minecraft:player_head run function du-in:kit/pawbert/menu/display
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:kit/bogo/menu/display
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:kit/judy/menu/display
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:kit/nick/menu/display

#Add Zootopia menu display icon
execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/zootopia/display

#End function when all kits are listed
execute if entity @s[tag=kitsListed] run tag @s remove kitsListed