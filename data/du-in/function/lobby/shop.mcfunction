##GO BACK AND TITLE NOW IN SCHEDULED FUNCTION

#Skin menu
execute if entity @s[gamemode=!creative] run function du-in:skins/skin_menu/common

#Music
execute unless entity @s[tag=musicOff] unless score #main pylonsDestroyed matches 3 run function du-in:music/lobby/shop

execute if entity @s[scores={drinkCount=1..}] run function du-in:lobby/shop/drinks/init
execute store result score @s drinkCount run clear @s potion 0

execute if entity @s[scores={drinkMilk=1..}] run function du-in:lobby/shop/drinks/drink_milk

# Shop Actions #
    execute if entity @s[scores={kitUse=1..}] run function du-in:lobby/kit_use/shop

    execute if entity @s[scores={thrownPotion=1..}] run function du-in:lobby/shop/drinks/clear
    execute if entity @s[scores={thrownMilk=1..}] run function du-in:lobby/shop/drinks/clear