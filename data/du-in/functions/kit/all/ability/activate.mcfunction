#Gives tag "kitActions" when carrot on a stick is rightclicked
tag @s add kitActions

#Set 1#
execute if entity @s[scores={kit=1}] run function du-in:kit/spider/ability/init
execute if entity @s[scores={kit=2}] at @s rotated as @s run function du-in:kit/zombie/ability/init
execute if entity @s[scores={kit=3}] run function du-in:kit/slime/ability/init
execute if entity @s[scores={kit=4}] run function du-in:kit/creeper/ability/init

execute if entity @s[scores={kit=5}] run function du-in:kit/springtrap/ability/init
execute if entity @s[scores={kit=6}] run function du-in:kit/golem/ability/init
execute if entity @s[scores={kit=7}] run function du-in:kit/player/ability/init

#Set 2
execute if entity @s[scores={kit=9}] run function du-in:kit/chara/ability/init
execute if entity @s[scores={kit=10}] run function du-in:kit/gaster/ability/init
execute if entity @s[scores={kit=11}] run function du-in:kit/asriel/ability/init
execute if entity @s[scores={kit=12}] run function du-in:kit/flowey/ability/init

execute if entity @s[scores={kit=13}] run function du-in:kit/papyrus/ability/init
execute if entity @s[scores={kit=14}] run function du-in:kit/asgore/ability/init
execute if entity @s[scores={kit=15}] run function du-in:kit/frisk/ability/init
execute if entity @s[scores={kit=16}] run function du-in:kit/sans/ability/init

#Set 3



#Villager
execute if entity @s[scores={kit=8}] run function du-in:kit/villager/ability/init

scoreboard players reset @s kitUse