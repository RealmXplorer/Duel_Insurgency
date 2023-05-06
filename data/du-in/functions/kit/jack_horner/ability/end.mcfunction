#Switch villager back to their ability
execute if entity @s[tag=stolen] run tag @s add kitDone
#End ability
tag @s remove kitActions

#Remove "used bag"
tag @s remove magicBag
#Remove umbrella
tag @s remove umbrella
tag @s remove crystalBall
tag @s remove poisonApple
tag @s remove phoenix
tag @s remove hornerWeapon
tag @s remove ethicalBug
tag @s remove midasHand
scoreboard players reset @s crossbowShoot