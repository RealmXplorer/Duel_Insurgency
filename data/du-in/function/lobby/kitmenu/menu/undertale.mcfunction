#Set number of kits to be displayed
execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 9

#Display Kits
execute unless items entity @s inventory.10 minecraft:player_head run function du-in:lobby/kitmenu/menu/undertale/ralsei

execute unless items entity @s inventory.8 minecraft:player_head run function du-in:lobby/kitmenu/menu/undertale/chara
execute unless items entity @s inventory.7 minecraft:player_head run function du-in:lobby/kitmenu/menu/undertale/gaster
execute unless items entity @s inventory.6 minecraft:player_head run function du-in:lobby/kitmenu/menu/undertale/asriel
execute unless items entity @s inventory.5 minecraft:player_head run function du-in:lobby/kitmenu/menu/undertale/flowey
execute unless items entity @s inventory.4 minecraft:player_head run function du-in:lobby/kitmenu/menu/undertale/papyrus
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:lobby/kitmenu/menu/undertale/asgore
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:lobby/kitmenu/menu/undertale/frisk
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:lobby/kitmenu/menu/undertale/sans

#Add Undertale menu display icon
execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/undertale/display

#End function when all kits are listed
execute if entity @s[tag=kitsListed] run tag @s remove kitsListed