#Set number of kits to be displayed
#execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 10
#execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 10
execute if entity @s[tag=kitsListed] store result score @s kitList run data get storage du-in:groups group.grab_bag

#Display Kits
execute unless items entity @s inventory.11 minecraft:player_head run function du-in:kit/willo/menu/init
execute unless items entity @s inventory.10 minecraft:player_head run function du-in:kit/knight/menu/init

execute unless items entity @s inventory.8 minecraft:player_head run function du-in:kit/kratos/menu/init
execute unless items entity @s inventory.7 minecraft:player_head run function du-in:kit/avatar/menu/init
execute unless items entity @s inventory.6 minecraft:player_head run function du-in:kit/sauron/menu/init
execute unless items entity @s inventory.5 minecraft:player_head run function du-in:kit/cinder/menu/init
execute unless items entity @s inventory.4 minecraft:player_head run function du-in:kit/gumball/menu/init
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:kit/cuphead/menu/init
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:kit/clairen/menu/init
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:kit/yharim/menu/init
#execute unless items entity @s inventory.1 minecraft:player_head run function du-in:kit/springtrap/menu/init

#Add Grab Bag menu display icon
#execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/display/gb

#End function when all kits are listed
execute if entity @s[tag=kitsListed] run tag @s remove kitsListed