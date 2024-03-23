#PARTICLES#
execute if entity @s[scores={papyrusHitTimer=29}] run particle minecraft:block dirt ~ ~ ~ 0.5 0 0.5 0 60 force
execute if entity @s[scores={papyrusHitTimer=25}] run particle minecraft:block dirt ~ ~ ~ 0.5 0 0.5 0 60 force
execute if entity @s[scores={papyrusHitTimer=20}] run particle minecraft:block dirt ~ ~ ~ 0.5 0 0.5 0 60 force
execute if entity @s[scores={papyrusHitTimer=10}] run particle minecraft:block dirt ~ ~ ~ 0.5 0 0.5 0 60 force
execute if entity @s[scores={papyrusHitTimer=5}] run particle minecraft:block dirt ~ ~ ~ 0.5 0 0.5 0 60 force

#SOUNDS#
execute if entity @s[scores={papyrusHitTimer=29}] run playsound minecraft:block.gravel.hit master @a ~ ~ ~
execute if entity @s[scores={papyrusHitTimer=25}] run playsound minecraft:block.gravel.hit master @a ~ ~ ~
execute if entity @s[scores={papyrusHitTimer=20}] run playsound minecraft:block.gravel.hit master @a ~ ~ ~
execute if entity @s[scores={papyrusHitTimer=10}] run playsound minecraft:block.gravel.hit master @a ~ ~ ~
execute if entity @s[scores={papyrusHitTimer=5}] run playsound minecraft:block.gravel.hit master @a ~ ~ ~
