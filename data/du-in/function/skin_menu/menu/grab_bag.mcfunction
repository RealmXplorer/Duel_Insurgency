#Set number of kits to be displayed
#execute if entity @s[tag=skinsList] run scoreboard players set @s skinList 10
execute if entity @s[tag=skinsListed] run scoreboard players set @s skinList 11

#Display Kits
execute unless items entity @s inventory.12 minecraft:player_head run function du-in:kit/willo/menu/skins/display
execute unless items entity @s inventory.11 minecraft:player_head run function du-in:kit/knight/menu/skins/display
execute unless items entity @s inventory.10 minecraft:player_head run function du-in:kit/kratos/menu/skins/display

execute unless items entity @s inventory.8 minecraft:player_head run function du-in:kit/avatar/menu/skins/display
execute unless items entity @s inventory.7 minecraft:player_head run function du-in:kit/sauron/menu/skins/display
execute unless items entity @s inventory.6 minecraft:player_head run function du-in:kit/cinder/menu/skins/display
execute unless items entity @s inventory.5 minecraft:player_head run function du-in:kit/gumball/menu/skins/display
execute unless items entity @s inventory.4 minecraft:player_head run function du-in:kit/cuphead/menu/skins/display
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:kit/clairen/menu/skins/display
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:kit/yharim/menu/skins/display
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:kit/springtrap/menu/skins/display

#Add Grab Bag menu display icon
execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/grabbag/display

#End function when all kits are listed
execute if entity @s[tag=skinsListed] run tag @s remove skinsListed