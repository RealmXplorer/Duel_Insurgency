##DATAPACK 6.0
#Set current player to this player
#execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Find player
#execute at @s run function du-in:kit/all/attribute/find_kit with storage du-in:main player

##DATAPACK 5.0
execute if entity @s[scores={kit=1}] run function du-in:kit/spider/attribute
execute if entity @s[scores={kit=2}] run function du-in:kit/zombie/attribute
execute if entity @s[scores={kit=3}] run function du-in:kit/slime/attribute
execute if entity @s[scores={kit=4}] run function du-in:kit/creeper/attribute

execute if entity @s[scores={kit=5}] run function du-in:kit/springtrap/attribute
execute if entity @s[scores={kit=6}] run function du-in:kit/golem/attribute
execute if entity @s[scores={kit=7}] run function du-in:kit/player/attribute
execute if entity @s[scores={kit=8}] run function du-in:kit/villager/attribute

execute if entity @s[scores={kit=9}] run function du-in:kit/chara/attribute
execute if entity @s[scores={kit=10}] run function du-in:kit/gaster/attribute
execute if entity @s[scores={kit=11}] run function du-in:kit/asriel/attribute
execute if entity @s[scores={kit=12}] run function du-in:kit/flowey/attribute

execute if entity @s[scores={kit=13}] run function du-in:kit/papyrus/attribute
execute if entity @s[scores={kit=14}] run function du-in:kit/asgore/attribute
execute if entity @s[scores={kit=15}] run function du-in:kit/frisk/attribute
execute if entity @s[scores={kit=16}] run function du-in:kit/sans/attribute

execute if entity @s[scores={kit=17}] run function du-in:kit/kylo/attribute
execute if entity @s[scores={kit=18}] run function du-in:kit/vader/attribute
execute if entity @s[scores={kit=19}] run function du-in:kit/palps/attribute
execute if entity @s[scores={kit=20}] run function du-in:kit/yharim/attribute

execute if entity @s[scores={kit=21}] run function du-in:kit/cuphead/attribute
execute if entity @s[scores={kit=22}] run function du-in:kit/gumball/attribute
execute if entity @s[scores={kit=23}] run function du-in:kit/nick/attribute
execute if entity @s[scores={kit=24}] run function du-in:kit/ralsei/attribute

execute if entity @s[scores={kit=25}] run function du-in:kit/clairen/attribute
execute if entity @s[scores={kit=26}] run function du-in:kit/jack_horner/attribute
execute if entity @s[scores={kit=27}] run function du-in:kit/puss/attribute
execute if entity @s[scores={kit=28}] run function du-in:kit/death/attribute

execute if entity @s[scores={kit=29}] run function du-in:kit/yoda/attribute
execute if entity @s[scores={kit=30}] run function du-in:kit/skeleton/attribute
execute if entity @s[scores={kit=31}] run function du-in:kit/sauron/attribute
execute if entity @s[scores={kit=32}] run function du-in:kit/avatar/attribute

execute if entity @s[scores={kit=1000}] run function du-in:kit/saac/attribute
execute if entity @s[scores={kit=1001}] run function du-in:kit/paz/attribute
execute if entity @s[scores={kit=1002}] run function du-in:kit/jerma/attribute
execute if entity @s[scores={kit=1003}] run function du-in:kit/impostor/attribute

execute if entity @s[scores={kit=1004}] run function du-in:kit/runza/attribute

execute if entity @s[scores={kit=2015}] run function du-in:kit/saul/attribute
execute if entity @s[scores={kit=42069}] run function du-in:kit/chungus/attribute

attribute @s minecraft:attack_damage base set 1