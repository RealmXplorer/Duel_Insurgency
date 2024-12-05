clear @s #du-in:weapon

##DATAPACK 6.0
#Set current player to this player
#execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Find player
#execute at @s run function du-in:kit/all/weapon/return/find_kit with storage du-in:main player

##DATAPACK 5.0
#Set 1
execute if entity @s[scores={kit=1}] run function du-in:kit/spider/weapon
execute if entity @s[scores={kit=2}] run function du-in:kit/zombie/weapon
execute if entity @s[scores={kit=3}] run function du-in:kit/slime/weapon
execute if entity @s[scores={kit=4}] run function du-in:kit/creeper/weapon

execute if entity @s[scores={kit=5}] run function du-in:kit/springtrap/weapon
execute if entity @s[scores={kit=6}] run function du-in:kit/golem/weapon
execute if entity @s[scores={kit=7}] run function du-in:kit/player/weapon
execute if entity @s[scores={kit=8}] run function du-in:kit/villager/weapon

execute if entity @s[scores={kit=9}] run function du-in:kit/chara/weapon
execute if entity @s[scores={kit=10},tag=!gasterInvisible] run function du-in:kit/gaster/weapon
execute if entity @s[scores={kit=11},tag=!asrielSaber] run function du-in:kit/asriel/weapon
execute if entity @s[scores={kit=12}] unless entity @s[scores={floweyHitTimer=0..}] run function du-in:kit/flowey/weapon

execute if entity @s[scores={kit=13}] run function du-in:kit/papyrus/weapon
execute if entity @s[scores={kit=14},tag=!thrown] run function du-in:kit/asgore/weapon
execute if entity @s[scores={kit=15}] run function du-in:kit/frisk/weapon
execute if entity @s[scores={kit=16}] run function du-in:kit/sans/weapon

execute if entity @s[scores={kit=17}] run function du-in:kit/kylo/weapon
execute if entity @s[scores={kit=18}] run function du-in:kit/vader/weapon
execute if entity @s[scores={kit=19}] run function du-in:kit/palps/weapon
execute if entity @s[scores={kit=20}] run function du-in:kit/yharim/weapon

#21 is Cuphead
execute if entity @s[scores={kit=22}] run function du-in:kit/gumball/weapon
execute if entity @s[scores={kit=23}] run function du-in:kit/nick/weapon
execute if entity @s[scores={kit=24}] run function du-in:kit/ralsei/weapon

execute if entity @s[scores={kit=25}] run function du-in:kit/clairen/weapon
execute if entity @s[scores={kit=26}] run function du-in:kit/jack_horner/weapon
execute if entity @s[scores={kit=27}] run function du-in:kit/puss/weapon
execute if entity @s[scores={kit=28}] run function du-in:kit/death/weapon

execute if entity @s[scores={kit=29}] run function du-in:kit/yoda/weapon
execute if entity @s[scores={kit=30}] unless entity @s[scores={skeletonMode=1..}] run function du-in:kit/skeleton/weapon
execute if entity @s[scores={kit=31}] run function du-in:kit/sauron/weapon
execute if entity @s[scores={kit=32}] run function du-in:kit/avatar/weapon

execute if entity @s[scores={kit=1000}] run function du-in:kit/saac/weapon
execute if entity @s[scores={kit=1001}] run function du-in:kit/paz/weapon
execute if entity @s[scores={kit=1002}] run function du-in:kit/jerma/weapon
execute if entity @s[scores={kit=1003}] run function du-in:kit/impostor/weapon
execute if entity @s[scores={kit=1004}] run function du-in:kit/runza/weapon

execute if entity @s[scores={kit=2015}] run function du-in:kit/saul/weapon
execute if entity @s[scores={kit=42069}] run function du-in:kit/chungus/weapon
