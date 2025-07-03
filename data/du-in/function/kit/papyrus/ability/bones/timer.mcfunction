scoreboard players remove @s papyrusHitTimer 1

#Deal damage to non-teammates
execute unless entity @a[tag=void] if entity @a[scores={kit=13},tag=boneAttack,tag=!sabotaged] as @a[gamemode=!spectator,distance=..3,tag=playing] unless score @n[type=marker,scores={papyrusHitTimer=..29}] team = @s team run damage @s 7 arrow by @p[tag=boneAttack]
execute unless entity @a[tag=void] if entity @a[scores={kit=13},tag=boneAttack,tag=sabotaged] run damage @s 7 arrow by @p[scores={kit=23}]
tag @p[tag=boneAttack] remove boneAttack

execute if entity @a[tag=void] if entity @s[scores={papyrusHitTimer=..29}] as @e[type=skeleton,tag=gonerThing,distance=..3] run damage @s 7 minecraft:generic

#Move bones up
execute if entity @s[scores={papyrusHitTimer=27..}] as @e[type=armor_stand,tag=papyrusBone] at @s run tp ~ ~.4 ~

#Move bones down
execute if entity @s[scores={papyrusHitTimer=..6}] as @e[type=armor_stand,tag=papyrusBone] at @s run tp ~ ~-.4 ~

#Play sounds
execute if entity @s[scores={papyrusHitTimer=29..}] run playsound minecraft:item.shovel.flatten master @a ~ ~ ~ 100 1
execute if entity @s[scores={papyrusHitTimer=25}] run playsound minecraft:item.shovel.flatten master @a ~ ~ ~ 100 1
execute if entity @s[scores={papyrusHitTimer=20}] run playsound minecraft:item.shovel.flatten master @a ~ ~ ~ 100 1
execute if entity @s[scores={papyrusHitTimer=10}] run playsound minecraft:item.shovel.flatten master @a ~ ~ ~ 100 1
execute if entity @s[scores={papyrusHitTimer=5}] run playsound minecraft:item.shovel.flatten master @a ~ ~ ~ 100 1

#Kill bone armorstands
execute if entity @s[scores={papyrusHitTimer=..0}] as @e[tag=papyrusBone,tag=boneIDSet] if score @s player = @e[tag=papyrusFind,scores={papyrusHitTimer=..0},limit=1] player run kill @s

kill @s[scores={papyrusHitTimer=..0}]