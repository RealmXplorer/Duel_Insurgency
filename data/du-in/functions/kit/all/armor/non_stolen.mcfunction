#ARMOR GIVING#
tag @s add armor

#Set 1
execute if entity @s[scores={kit=1}] run function du-in:kit/spider/armor
execute if entity @s[scores={kit=2}] run function du-in:kit/zombie/armor
execute if entity @s[scores={kit=3}] run function du-in:kit/slime/armor
execute if entity @s[scores={kit=4}] run function du-in:kit/creeper/armor


execute if entity @s[scores={kit=7}] run function du-in:kit/player/armor
execute if entity @s[scores={kit=8}] run function du-in:kit/villager/armor

#Set 2
execute if entity @s[scores={kit=9}] run function du-in:kit/chara/armor
execute if entity @s[scores={kit=10}] run function du-in:kit/gaster/armor
execute if entity @s[scores={kit=11}] run function du-in:kit/asriel/armor

execute if entity @s[scores={kit=14}] run function du-in:kit/asgore/armor
