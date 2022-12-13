#PARTICLES#
execute at @e[type=armor_stand,scores={papyrusHitTimer=29}] run particle minecraft:block dirt ~ ~ ~ 0.5 0 0.5 0 60 force
execute at @e[type=armor_stand,scores={papyrusHitTimer=25}] run particle minecraft:block dirt ~ ~ ~ 0.5 0 0.5 0 60 force
execute at @e[type=armor_stand,scores={papyrusHitTimer=20}] run particle minecraft:block dirt ~ ~ ~ 0.5 0 0.5 0 60 force
execute at @e[type=armor_stand,scores={papyrusHitTimer=10}] run particle minecraft:block dirt ~ ~ ~ 0.5 0 0.5 0 60 force
execute at @e[type=armor_stand,scores={papyrusHitTimer=5}] run particle minecraft:block dirt ~ ~ ~ 0.5 0 0.5 0 60 force

#SOUNDS#
execute at @e[type=armor_stand,scores={papyrusHitTimer=29}] run playsound minecraft:block.gravel.hit master @a ~ ~ ~
execute at @e[type=armor_stand,scores={papyrusHitTimer=25}] run playsound minecraft:block.gravel.hit master @a ~ ~ ~
execute at @e[type=armor_stand,scores={papyrusHitTimer=20}] run playsound minecraft:block.gravel.hit master @a ~ ~ ~
execute at @e[type=armor_stand,scores={papyrusHitTimer=10}] run playsound minecraft:block.gravel.hit master @a ~ ~ ~
execute at @e[type=armor_stand,scores={papyrusHitTimer=5}] run playsound minecraft:block.gravel.hit master @a ~ ~ ~
