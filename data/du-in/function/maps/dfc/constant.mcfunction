execute if entity @s[scores={drinkCount=1..}] run function du-in:lobby/shop/drinks/init
execute store result score @s drinkCount run clear @s potion 0

execute if entity @s[scores={drinkMilk=1..}] run function du-in:lobby/shop/drinks/drink_milk

    execute if entity @s[scores={thrownPotion=1..}] run function du-in:lobby/shop/drinks/clear
    #execute if entity @s[scores={thrownBottle=1..}] run function du-in:lobby/shop/drinks/clear
    execute if entity @s[scores={thrownMilk=1..}] run function du-in:lobby/shop/drinks/clear