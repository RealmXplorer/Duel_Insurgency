tag @s add self
execute as @e[type=area_effect_cloud,tag=grave] if score @s player = @a[tag=self,limit=1] player run tag @a[tag=self] add asFound

execute if entity @s[tag=!asFound,tag=!teamDead] run function du-in:kit/zombie/ability/respawn
effect give @s[tag=!asFound,tag=!teamDead] minecraft:strength 2 1 true
effect give @s[tag=!asFound,tag=!teamDead] minecraft:speed 2 3 true
title @s[tag=!asFound] actionbar {"text":"Grave Destroyed! You are enraged!","bold":true,"color":"red"}
tag @s remove asFound
tag @s remove self