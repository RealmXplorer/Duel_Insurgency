#Set number of kits to be displayed
execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 8

#Display Kits
execute unless items entity @s inventory.8 minecraft:player_head run function du-in:kit/skeleton/menu/display
execute unless items entity @s inventory.7 minecraft:player_head run function du-in:kit/spider/menu/display
execute unless items entity @s inventory.6 minecraft:player_head run function du-in:kit/zombie/menu/display
execute unless items entity @s inventory.5 minecraft:player_head run function du-in:kit/slime/menu/display
execute unless items entity @s inventory.4 minecraft:player_head run function du-in:kit/creeper/menu/display
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:kit/golem/menu/display
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:kit/player/menu/display
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:kit/villager/menu/display

#Add Minecraft menu display icon
execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/minecraft/display

#End function when all kits are listed
execute if entity @s[tag=kitsListed] run tag @s remove kitsListed