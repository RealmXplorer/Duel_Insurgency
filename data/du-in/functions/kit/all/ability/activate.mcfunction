#Gives tag "kitActions" when carrot on a stick is rightclicked
tag @s add kitActions

execute if entity @s[scores={kit=2}] at @s rotated as @s run function du-in:kit/zombie/ability/init
execute if entity @s[scores={kit=3}] run function du-in:kit/slime/ability/init

execute if entity @s[scores={kit=7}] run function du-in:kit/player/ability/init
execute if entity @s[scores={kit=8}] run function du-in:kit/villager/ability/init

execute if entity @s[scores={kit=9}] run function du-in:kit/chara/ability/init
execute if entity @s[scores={kit=10}] run function du-in:kit/gaster/ability/init

scoreboard players reset @s kitUse