scoreboard players remove @s papyrusHitTimer 1

#Deal damage to non-teammates
execute if entity @s[scores={papyrusHitTimer=29}] run execute as @a[distance=..3,tag=playing] unless score @e[type=marker,scores={papyrusHitTimer=29},sort=nearest,limit=1] team = @s team run effect give @a[distance=..3,tag=playing,gamemode=!spectator,tag=!teamDead] minecraft:instant_damage 5 0 true

#Move bones up
execute if entity @s[scores={papyrusHitTimer=27..}] run execute as @e[type=armor_stand,tag=papyrusBone] at @s run tp ~ ~.4 ~

#Move bones down
execute if entity @s[scores={papyrusHitTimer=..6}] run execute as @e[type=armor_stand,tag=papyrusBone] at @s run tp ~ ~-.4 ~

#Play sounds
execute if entity @s[scores={papyrusHitTimer=29..}] run playsound minecraft:item.shovel.flatten master @a ~ ~ ~ 100 1
execute if entity @s[scores={papyrusHitTimer=25}] run playsound minecraft:item.shovel.flatten master @a ~ ~ ~ 100 1
execute if entity @s[scores={papyrusHitTimer=20}] run playsound minecraft:item.shovel.flatten master @a ~ ~ ~ 100 1
execute if entity @s[scores={papyrusHitTimer=10}] run playsound minecraft:item.shovel.flatten master @a ~ ~ ~ 100 1
execute if entity @s[scores={papyrusHitTimer=5}] run playsound minecraft:item.shovel.flatten master @a ~ ~ ~ 100 1

#Kill bone armorstands
execute if entity @s[scores={papyrusHitTimer=..0}] as @e[tag=papyrusBone,tag=boneIDSet] if score @s player = @e[tag=papyrusFind,scores={papyrusHitTimer=..0},limit=1] player run kill @s

#kill @e[tag=papyrusBone,type=minecraft:armor_stand,distance=..2]

kill @s[scores={papyrusHitTimer=..0}]