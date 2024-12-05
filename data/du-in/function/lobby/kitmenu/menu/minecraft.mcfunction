#Set number of kits to be displayed
execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 8

#Display Kits
execute unless items entity @s inventory.8 minecraft:player_head run function du-in:lobby/kitmenu/menu/minecraft/skeleton
execute unless items entity @s inventory.7 minecraft:player_head run function du-in:lobby/kitmenu/menu/minecraft/spider
execute unless items entity @s inventory.6 minecraft:player_head run function du-in:lobby/kitmenu/menu/minecraft/zombie
execute unless items entity @s inventory.5 minecraft:player_head run function du-in:lobby/kitmenu/menu/minecraft/slime
execute unless items entity @s inventory.4 minecraft:player_head run function du-in:lobby/kitmenu/menu/minecraft/creeper
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:lobby/kitmenu/menu/minecraft/golem
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:lobby/kitmenu/menu/minecraft/player
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:lobby/kitmenu/menu/minecraft/villager

#Add Minecraft menu display icon
execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/minecraft/display

#End function when all kits are listed
execute if entity @s[tag=kitsListed] run tag @s remove kitsListed