#Set number of kits to be displayed
#execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 3
execute if entity @s[tag=kitsListed] store result score @s kitList run data get storage du-in:groups group.last_wish

#Display Kits
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:kit/death/menu/init
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:kit/jack_horner/menu/init
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:kit/puss/menu/init

#Add Last Wish menu display icon
#execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/display/lw

#End function when all kits are listed
execute if entity @s[tag=kitsListed] run tag @s remove kitsListed