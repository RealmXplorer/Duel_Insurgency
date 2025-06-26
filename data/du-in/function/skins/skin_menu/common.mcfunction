execute if entity @s[tag=skinsListed] run scoreboard players set @s skinList 20

execute unless items entity @s inventory.22 minecraft:player_head run function du-in:skins/skin_menu/slime
execute unless items entity @s inventory.21 minecraft:player_head run function du-in:skins/skin_menu/palps
execute unless items entity @s inventory.20 minecraft:player_head run function du-in:skins/skin_menu/asgore
execute unless items entity @s inventory.19 minecraft:player_head run function du-in:skins/skin_menu/kylo


execute unless items entity @s inventory.17 minecraft:player_head run function du-in:skins/skin_menu/villager
execute unless items entity @s inventory.16 minecraft:player_head run function du-in:skins/skin_menu/frisk
execute unless items entity @s inventory.15 minecraft:player_head run function du-in:skins/skin_menu/flowey
execute unless items entity @s inventory.14 minecraft:player_head run function du-in:skins/skin_menu/golem
execute unless items entity @s inventory.13 minecraft:player_head run function du-in:skins/skin_menu/ralsei
execute unless items entity @s inventory.12 minecraft:player_head run function du-in:skins/skin_menu/sans
execute unless items entity @s inventory.11 minecraft:player_head run function du-in:skins/skin_menu/puss
execute unless items entity @s inventory.10 minecraft:player_head run function du-in:skins/skin_menu/chara


execute unless items entity @s inventory.8 minecraft:player_head run function du-in:skins/skin_menu/springtrap
execute unless items entity @s inventory.7 minecraft:player_head run function du-in:skins/skin_menu/zombie
execute unless items entity @s inventory.6 minecraft:player_head run function du-in:skins/skin_menu/creeper
execute unless items entity @s inventory.5 minecraft:player_head run function du-in:skins/skin_menu/player
execute unless items entity @s inventory.4 minecraft:player_head run function du-in:skins/skin_menu/gaster
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:skins/skin_menu/clairen
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:skins/skin_menu/nick
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:skins/skin_menu/cuphead

execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:skins/skin_menu/display
execute unless items entity @s inventory.0 minecraft:barrier run function du-in:skins/skin_menu/default_skins


execute if entity @s[tag=skinsListed] run tag @s remove skinsListed