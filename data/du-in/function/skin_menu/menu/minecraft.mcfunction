#Set number of kits to be displayed
execute if entity @s[tag=skinsListed] run scoreboard players set @s skinList 8

#Display Kits
execute unless items entity @s inventory.8 minecraft:player_head run function du-in:kit/skeleton/menu/skins/display
execute unless items entity @s inventory.7 minecraft:player_head run function du-in:kit/spider/menu/skins/display
execute unless items entity @s inventory.6 minecraft:player_head run function du-in:kit/zombie/menu/skins/display
execute unless items entity @s inventory.5 minecraft:player_head run function du-in:kit/slime/menu/skins/display
execute unless items entity @s inventory.4 minecraft:player_head run function du-in:kit/creeper/menu/skins/display
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:kit/golem/menu/skins/display
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:kit/player/menu/skins/display
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:kit/villager/menu/skins/display

#Add Minecraft menu display icon
#execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:skin_menu/menu/display/mc

#End function when all kits are listed
execute if entity @s[tag=skinsListed] run tag @s remove skinsListed