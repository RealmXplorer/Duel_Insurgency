scoreboard players add @s kitTheme 1
function du-in:lobby/reset/item
playsound minecraft:ui.button.click master @s ~ ~ ~

tag @s add changeTheme
clear @s
#tag @s add kitsListed
# tag @s add menuRefresh
function du-in:lobby/kitmenu/menu/render_menu
#advancement revoke @s only du-in:utility/detect_item
tag @s remove changeTheme

#execute store result storage du-in:temp theme_index int 1 run scoreboard players get @s kitTheme
#function du-in:lobby/kitmenu/menu/load_group with storage du-in:temp

execute if entity @s[scores={thrownBarrier=1..}] run function du-in:other/clear_ground_items