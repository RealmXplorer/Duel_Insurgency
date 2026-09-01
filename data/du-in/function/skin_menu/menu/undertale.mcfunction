#Set number of kits to be displayed
execute if entity @s[tag=skinsListed] run scoreboard players set @s skinList 11

#Display Kits
execute unless items entity @s inventory.12 minecraft:player_head run function du-in:kit/jevil/menu/skins/display
execute unless items entity @s inventory.11 minecraft:player_head run function du-in:kit/susie/menu/skins/display
execute unless items entity @s inventory.10 minecraft:player_head run function du-in:kit/ralsei/menu/skins/display

execute unless items entity @s inventory.8 minecraft:player_head run function du-in:kit/chara/menu/skins/display
execute unless items entity @s inventory.7 minecraft:player_head run function du-in:kit/gaster/menu/skins/display
execute unless items entity @s inventory.6 minecraft:player_head run function du-in:kit/asriel/menu/skins/display
execute unless items entity @s inventory.5 minecraft:player_head run function du-in:kit/flowey/menu/skins/display
execute unless items entity @s inventory.4 minecraft:player_head run function du-in:kit/papyrus/menu/skins/display
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:kit/asgore/menu/skins/display
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:kit/frisk/menu/skins/display
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:kit/sans/menu/skins/display

#Add Undertale menu display icon
#execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:skin_menu/menu/display/ut

#End function when all kits are listed
execute if entity @s[tag=skinsListed] run tag @s remove skinsListed