#Set Spawnpoints
execute if entity @s[tag=cIngame,tag=!grave] run function du-in:ingame/spawnpoint/init
execute if entity @s[tag=!cIngame,tag=!grave] run function du-in:ingame/spawnpoint/random

#Check if player has ability
execute unless entity @s[level=3..] unless items entity @s[tag=!startgame,tag=!cooldown,tag=!grave,tag=!hornerWeapon] weapon.offhand #du-in:ability run xp set @s 2 levels

#Check if player has weapon
execute if entity @s[tag=!pussFear,tag=!kratosRage,tag=!kitMenu,tag=!teamDead,tag=!pawbertInvisible,tag=!gasterInvisible,tag=!asrielSaber,tag=!thrown,tag=!brokenShield] unless entity @s[scores={floweyHitTimer=0..}] unless entity @s[scores={skeletonMode=1..}] run function du-in:kit/all/weapon/test

#Give armor if player is missing any#
execute if entity @s[predicate=!du-in:has_armor,predicate=!du-in:effect/is_invisible,tag=!teamDead,tag=!kitMenu,tag=!noClothes] run function du-in:kit/all/armor/armor_reset

#Jerma Randomizer
execute if entity @s[scores={kit=1003},predicate=du-in:chance/third_chance] run function du-in:kit/jerma/weapon