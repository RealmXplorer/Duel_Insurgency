#Set Spawnpoints
execute if entity @s[tag=cIngame] if score #main map matches 7 run function du-in:ingame/spawnpoint/furthest
execute if entity @s[tag=cIngame] unless score #main map matches 7 run function du-in:ingame/spawnpoint/random

#Check if player has ability
execute unless entity @s[level=3..] unless items entity @s[tag=!startgame,tag=!cooldown,tag=!grave,tag=!hornerWeapon] weapon.offhand #du-in:ability run xp set @s 2 levels

#Check if player has weapon
execute if entity @s[tag=!startgame,tag=!pussFear,tag=!kitMenu,tag=!teamDead] store result score @s weapCount run clear @s #du-in:weapon 0
#execute if entity @s[tag=!startgame,tag=!pussFear,tag=!kitMenu,tag=!teamDead] if score @s weapCount matches 2.. run clear @s #du-in:weapon

#execute if entity @s[tag=!startgame,tag=!pussFear,tag=!kitMenu,tag=!teamDead] unless score @s weapCount matches 1 run clear @s #du-in:weapon

execute if entity @s[tag=!startgame,tag=!pussFear,tag=!kitMenu,tag=!teamDead] unless score @s weapCount matches 1 run function du-in:kit/all/weapon/init

execute if entity @s[tag=playing,scores={kit=1002},predicate=du-in:chance/third_chance] run function du-in:kit/jerma/weapon

#Spawnpoint stuff
execute if entity @s[tag=!cIngame] run function du-in:ingame/spawnpoint/random