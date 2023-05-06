scoreboard players remove @s kitTheme 1
function du-in:lobby/item_reset
playsound minecraft:ui.button.click master @s ~ ~ ~
clear @s
tag @s add kitsListed
execute if entity @s[scores={thrownBarrier=1..}] run function du-in:other/clear_ground_items