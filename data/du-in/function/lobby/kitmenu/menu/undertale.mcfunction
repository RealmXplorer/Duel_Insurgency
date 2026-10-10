#Set number of kits to be displayed
#execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 12
execute if entity @s[tag=kitsListed] store result score @s kitList run data get storage du-in:groups group.undertale

#Display Kits
execute unless items entity @s inventory.13 minecraft:player_head run function du-in:kit/rory/menu/init
execute unless items entity @s inventory.12 minecraft:player_head run function du-in:kit/jevil/menu/init
execute unless items entity @s inventory.11 minecraft:player_head run function du-in:kit/susie/menu/init
execute unless items entity @s inventory.10 minecraft:player_head run function du-in:kit/ralsei/menu/init

execute unless items entity @s inventory.8 minecraft:player_head run function du-in:kit/chara/menu/init
execute unless items entity @s inventory.7 minecraft:player_head run function du-in:kit/gaster/menu/init
execute unless items entity @s inventory.6 minecraft:player_head run function du-in:kit/asriel/menu/init
execute unless items entity @s inventory.5 minecraft:player_head run function du-in:kit/flowey/menu/init
execute unless items entity @s inventory.4 minecraft:player_head run function du-in:kit/papyrus/menu/init
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:kit/asgore/menu/init
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:kit/frisk/menu/init
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:kit/sans/menu/init

#Add Undertale menu display icon
#execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/display/ut

#End function when all kits are listed
execute if entity @s[tag=kitsListed] run tag @s remove kitsListed