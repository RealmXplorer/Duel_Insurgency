scoreboard players remove @s skinTheme 1
function du-in:lobby/reset/item
playsound minecraft:ui.button.click master @s ~ ~ ~
clear @s
function du-in:lobby/scheduled/shop
tag @s add skinsListed
execute if entity @s[scores={thrownBarrier=1..}] run function du-in:other/clear_ground_items