tag @s add self
#execute as @e[type=armor_stand,tag=grave] if score @s player = @a[tag=self,limit=1] player run tag @a[tag=self] add asFound
execute as @e[type=area_effect_cloud,tag=grave] if score @s player = @a[tag=self,limit=1] player run tag @a[tag=self] add asFound

#tag @s[tag=!asFound] add zombieRespawn
execute if entity @s[tag=!asFound] run function du-in:kit/zombie/ability/respawn
effect give @s[tag=!asFound,tag=!teamDead] minecraft:strength 2 1 true
effect give @s[tag=!asFound,tag=!teamDead] minecraft:speed 2 3 true
#execute if entity @s[tag=!asFound,tag=teamDead] run say Grave gone but you live
title @s[tag=!asFound] actionbar {"text":"Grave Destroyed! You are enraged!","bold":true,"color":"red"}
#tag @s[tag=!asFound,tag=teamDead] remove grave
#kill @s[tag=!asFound,tag=teamDead]
tag @s remove asFound
tag @s remove self