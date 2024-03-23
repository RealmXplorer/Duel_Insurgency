#ARMOR GIVING#
tag @s add armor

#Set 1
execute if entity @s[scores={kit=1},tag=!stolen] run function du-in:kit/spider/armor
execute if entity @s[scores={kit=2},tag=!stolen] run function du-in:kit/zombie/armor
execute if entity @s[scores={kit=3},tag=!stolen] run function du-in:kit/slime/armor

execute if entity @s[scores={kit=7},tag=!stolen] run function du-in:kit/player/armor
execute if entity @s[scores={kit=9},tag=!stolen] run function du-in:kit/chara/armor
execute if entity @s[scores={kit=10},tag=!stolen] run function du-in:kit/gaster/armor

#Villager
execute if entity @s[scores={kit=8}] run function du-in:kit/villager/armor
execute if entity @s[tag=stolen] run function du-in:kit/villager/armor