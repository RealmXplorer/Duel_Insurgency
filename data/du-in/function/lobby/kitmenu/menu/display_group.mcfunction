# #Copy group list into working queue
# $data modify storage du-in:temp kit_queue set from storage du-in:groups group.$(active_group)

# #Update player kitList score
# $execute if entity @s[tag=kitsListed] store result score @s kitList run data get storage du-in:groups group.$(active_group)

$data modify storage du-in:temp kit_queue set from storage du-in:groups group.$(active_group)
#execute if entity @s[tag=kitsListed] store result score @s kitList run data get storage du-in:temp kit_queue

#Theme icon
execute unless items entity @s inventory.17 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/theme_icon with storage du-in:temp

#To and from legendary
# execute unless items entity @s[scores={kitTheme=0}] inventory.21 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/function/from_legend
# execute unless items entity @s[scores={kitTheme=1..}] inventory.21 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/function/to_legend

#Next
execute if score @s kitTheme matches 1.. if score @s kitTheme < #main maxThemes unless items entity @s inventory.8 minecraft:barrier run function du-in:lobby/kitmenu/menu/function/next

#Previous
execute unless items entity @s[scores={kitTheme=2..}] inventory.26 minecraft:barrier run function du-in:lobby/kitmenu/menu/function/prev

#Calculate max array index (length - 1)
execute store result score #menu queueIndex run data get storage du-in:temp kit_queue
scoreboard players remove #menu queueIndex 1

#Start loop only if queue has at least 1 item left
execute store result storage du-in:temp index int 1 run scoreboard players get #menu queueIndex
execute if score #menu queueIndex matches 0.. run function du-in:lobby/kitmenu/menu/init_entry with storage du-in:temp

execute if entity @s[tag=skinMenu] run return fail

##DEFAULTS
#Random button
execute if entity @s unless items entity @s[scores={kitTheme=0}] inventory.24 minecraft:barrier run function du-in:lobby/kitmenu/menu/function/random_legend
execute unless items entity @s[scores={kitTheme=1..}] inventory.24 minecraft:barrier run function du-in:lobby/kitmenu/menu/function/random

#Spectate button
execute unless items entity @s[scores={kitTheme=0..},tag=!playing] inventory.18 minecraft:barrier run function du-in:lobby/kitmenu/menu/function/spectate

#Skin menu
#execute if entity @s[tag=skinMenu] run return run function du-in:lobby/kitmenu/skins/common

#execute if entity @s[tag=kitsListed] run tag @s remove kitsListed