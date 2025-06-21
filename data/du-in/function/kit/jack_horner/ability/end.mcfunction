#Switch villager back to their ability
execute if entity @s[tag=stolen] run tag @s add kitDone
#End ability
tag @s remove kitActions

#Remove "used bag"
tag @s remove magicBag
#Remove umbrella
tag @s remove cooldown
tag @s remove umbrella
tag @s remove crystalBall
tag @s remove poisonApple
tag @s remove phoenix
tag @s remove hornerWeapon
tag @s remove ethicalBug
tag @s remove midasHand
tag @s remove drinkMe
tag @s remove thrown

#scoreboard players reset @s shrunkTimer
scoreboard players reset @s crossbowShoot