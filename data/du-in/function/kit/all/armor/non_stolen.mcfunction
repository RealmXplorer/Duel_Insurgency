#ARMOR GIVING#
tag @s add armor

##DATAPACK 6.0
#Set current player to this player
#execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Find player
#execute at @s run function du-in:kit/all/armor/return/find_kit with storage du-in:main player

##DATAPACK 5.0
#Set 1
execute if entity @s[scores={kit=1}] run function du-in:kit/spider/armor
execute if entity @s[scores={kit=2}] run function du-in:kit/zombie/armor
execute if entity @s[scores={kit=3}] run function du-in:kit/slime/armor
execute if entity @s[scores={kit=4}] run function du-in:kit/creeper/armor

execute if entity @s[scores={kit=5}] run function du-in:kit/springtrap/armor
execute if entity @s[scores={kit=6}] run function du-in:kit/golem/armor
execute if entity @s[scores={kit=7}] run function du-in:kit/player/armor
execute if entity @s[scores={kit=8}] run function du-in:kit/villager/armor

#Set 2
execute if entity @s[scores={kit=9}] run function du-in:kit/chara/armor
execute if entity @s[scores={kit=10}] run function du-in:kit/gaster/armor
execute if entity @s[scores={kit=11}] run function du-in:kit/asriel/armor
execute if entity @s[scores={kit=12}] run function du-in:kit/flowey/armor

execute if entity @s[scores={kit=13}] run function du-in:kit/papyrus/armor
execute if entity @s[scores={kit=14}] run function du-in:kit/asgore/armor
execute if entity @s[scores={kit=15}] run function du-in:kit/frisk/armor 
execute if entity @s[scores={kit=16}] run function du-in:kit/sans/armor 

#Set 3
execute if entity @s[scores={kit=17}] run function du-in:kit/kylo/armor
execute if entity @s[scores={kit=18}] run function du-in:kit/vader/armor
execute if entity @s[scores={kit=19}] run function du-in:kit/palps/armor
execute if entity @s[scores={kit=20}] run function du-in:kit/yharim/armor

execute if entity @s[scores={kit=21}] run function du-in:kit/cuphead/armor
execute if entity @s[scores={kit=22}] run function du-in:kit/gumball/armor
execute if entity @s[scores={kit=23}] run function du-in:kit/nick/armor
execute if entity @s[scores={kit=24}] run function du-in:kit/ralsei/armor

#Set 4
execute if entity @s[scores={kit=25}] run function du-in:kit/clairen/armor
execute if entity @s[scores={kit=26}] run function du-in:kit/jack_horner/armor
execute if entity @s[scores={kit=27}] run function du-in:kit/puss/armor
execute if entity @s[scores={kit=28}] run function du-in:kit/death/armor

execute if entity @s[scores={kit=29}] run function du-in:kit/yoda/armor
execute if entity @s[scores={kit=30}] run function du-in:kit/skeleton/armor
execute if entity @s[scores={kit=31}] run function du-in:kit/sauron/armor
execute if entity @s[scores={kit=32}] run function du-in:kit/avatar/armor

#Legendary
execute if entity @s[scores={kit=1000}] run function du-in:kit/saac/armor
execute if entity @s[scores={kit=1001}] run function du-in:kit/paz/armor
execute if entity @s[scores={kit=1002}] run function du-in:kit/jerma/armor
execute if entity @s[scores={kit=1003}] run function du-in:kit/impostor/armor
execute if entity @s[scores={kit=1004}] run function du-in:kit/runza/armor

execute if entity @s[scores={kit=2015}] run function du-in:kit/saul/armor
execute if entity @s[scores={kit=42069}] run function du-in:kit/chungus/armor