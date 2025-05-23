#Gives tag "kitActions" when carrot on a stick is rightclicked
tag @s add kitActions

##DATAPACK 6.0
#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Find player
execute at @s run function du-in:kit/all/ability/activate/find_kit with storage du-in:main player
#execute if entity @s[tag=hasRing] run function du-in:kit/sauron/ability/with_ring/init

##DATAPACK 5.0
#Set 1#
# execute if entity @s[scores={kit=1}] run function du-in:kit/spider/ability/init
# execute if entity @s[scores={kit=2}] at @s rotated as @s run function du-in:kit/zombie/ability/init
# #execute if entity @s[scores={kit=2}] run function du-in:kit/zombie/ability/init

# execute if entity @s[scores={kit=3}] run function du-in:kit/slime/ability/init
# execute if entity @s[scores={kit=4}] run function du-in:kit/creeper/ability/init

# execute if entity @s[scores={kit=5}] run function du-in:kit/springtrap/ability/init
# execute if entity @s[scores={kit=6}] run function du-in:kit/golem/ability/init
# execute if entity @s[scores={kit=7}] run function du-in:kit/player/ability/init

# #Set 2
# execute if entity @s[scores={kit=9}] run function du-in:kit/chara/ability/init
# execute if entity @s[scores={kit=10}] run function du-in:kit/gaster/ability/init
# execute if entity @s[scores={kit=11}] run function du-in:kit/asriel/ability/init
# execute if entity @s[scores={kit=12}] run function du-in:kit/flowey/ability/init

# execute if entity @s[scores={kit=13}] run function du-in:kit/papyrus/ability/init
# execute if entity @s[scores={kit=14}] run function du-in:kit/asgore/ability/init
# execute if entity @s[scores={kit=15}] run function du-in:kit/frisk/ability/init
# execute if entity @s[scores={kit=16}] run function du-in:kit/sans/ability/init

# #Set 3
# execute if entity @s[scores={kit=17}] run function du-in:kit/kylo/ability/init
# execute if entity @s[scores={kit=18}] run function du-in:kit/vader/ability/init
# execute if entity @s[scores={kit=19}] run function du-in:kit/palps/ability/init
# execute if entity @s[scores={kit=20}] run function du-in:kit/yharim/ability/init

# execute if entity @s[scores={kit=21}] run function du-in:kit/cuphead/ability/init
# execute if entity @s[scores={kit=22}] run function du-in:kit/gumball/ability/init
# execute if entity @s[scores={kit=23}] run function du-in:kit/nick/ability/init
# execute if entity @s[scores={kit=24}] run function du-in:kit/ralsei/ability/init

# #Set 4
# execute if entity @s[scores={kit=25}] run function du-in:kit/clairen/ability/init
# execute if entity @s[scores={kit=26}] run function du-in:kit/jack_horner/ability/init
# execute if entity @s[scores={kit=27}] run function du-in:kit/puss/ability/init
# execute if entity @s[scores={kit=28}] run function du-in:kit/death/ability/init

# execute if entity @s[scores={kit=29}] run function du-in:kit/yoda/ability/init
# execute if entity @s[scores={kit=30}] run function du-in:kit/skeleton/ability/init
# execute if entity @s[scores={kit=31},tag=!hasRing] run function du-in:kit/sauron/ability/init
# execute if entity @s[scores={kit=32}] run function du-in:kit/avatar/ability/init

# #Legendary
# execute if entity @s[scores={kit=1000}] run function du-in:kit/saac/ability/init
# execute if entity @s[scores={kit=1001}] run function du-in:kit/paz/ability/init
# execute if entity @s[scores={kit=1002}] run function du-in:kit/jerma/ability/init
# execute if entity @s[scores={kit=1003}] run function du-in:kit/impostor/ability/init
# execute if entity @s[scores={kit=1004}] run function du-in:kit/runza/ability/init

# execute if entity @s[scores={kit=2015}] run function du-in:kit/saul/ability/init
# execute if entity @s[scores={kit=42069}] run function du-in:kit/chungus/ability/init

# #Villager
# execute if entity @s[scores={kit=8}] run function du-in:kit/villager/ability/init

scoreboard players reset @s kitUse