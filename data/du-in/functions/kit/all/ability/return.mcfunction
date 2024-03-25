title @s[tag=!stolen] actionbar ["",{"text":"Ability Restored!","bold":true,"color":"green"}]
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 10 1.5
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1.3
playsound minecraft:item.bottle.fill_dragonbreath master @s ~ ~ ~ 1 1.3
particle minecraft:composter ~ ~1 ~ 0.25 0.5 0.25 0 20 force
clear @s carrot_on_a_stick

#Set 1
execute if entity @s[scores={kit=1}] run function du-in:kit/spider/ability/item
execute if entity @s[scores={kit=2}] run function du-in:kit/zombie/ability/item
execute if entity @s[scores={kit=3}] run function du-in:kit/slime/ability/item
execute if entity @s[scores={kit=4}] run function du-in:kit/creeper/ability/item

execute if entity @s[scores={kit=5}] run function du-in:kit/springtrap/ability/item
execute if entity @s[scores={kit=6}] run function du-in:kit/golem/ability/item
execute if entity @s[scores={kit=7}] run function du-in:kit/player/ability/item
execute if entity @s[scores={kit=8}] run function du-in:kit/villager/ability/item
#,tag=!stolen

#Set 2
execute if entity @s[scores={kit=9}] run function du-in:kit/chara/ability/item
execute if entity @s[scores={kit=10}] run function du-in:kit/gaster/ability/item
execute if entity @s[scores={kit=11}] run function du-in:kit/asriel/ability/item
execute if entity @s[scores={kit=12}] run function du-in:kit/flowey/ability/item

execute if entity @s[scores={kit=13}] run function du-in:kit/papyrus/ability/item
execute if entity @s[scores={kit=14}] run function du-in:kit/asgore/ability/item
execute if entity @s[scores={kit=15}] run function du-in:kit/frisk/ability/item
execute if entity @s[scores={kit=16}] run function du-in:kit/sans/ability/item

#Set 3
execute if entity @s[scores={kit=17}] run function du-in:kit/kylo/ability/item
execute if entity @s[scores={kit=18}] run function du-in:kit/vader/ability/item
execute if entity @s[scores={kit=19}] unless entity @s[scores={palpTimer=-99..}] run function du-in:kit/palps/ability/item
execute if entity @s[scores={kit=20}] run function du-in:kit/yharim/ability/item

execute if entity @s[scores={kit=21}] run function du-in:kit/cuphead/ability/item
execute if entity @s[scores={kit=22}] run function du-in:kit/gumball/ability/item
execute if entity @s[scores={kit=23}] run function du-in:kit/nick/ability/item
execute if entity @s[scores={kit=24}] run function du-in:kit/ralsei/ability/item

#Set 4
execute if entity @s[scores={kit=25}] run function du-in:kit/clairen/ability/item
execute if entity @s[scores={kit=26}] run function du-in:kit/jack_horner/ability/item
execute if entity @s[scores={kit=27}] run function du-in:kit/puss/ability/item
execute if entity @s[scores={kit=28}] run function du-in:kit/death/ability/item

execute if entity @s[scores={kit=29}] run function du-in:kit/yoda/ability/item
execute if entity @s[scores={kit=30}] run function du-in:kit/skeleton/ability/item
#execute if entity @s[scores={kit=31}] run function du-in:kit/ralsei/ability/item
#execute if entity @s[scores={kit=32}] run function du-in:kit/ralsei/ability/item

#Set Legendary
execute if entity @s[scores={kit=1000}] run function du-in:kit/saac/ability/item
execute if entity @s[scores={kit=1001}] run function du-in:kit/paz/ability/item
execute if entity @s[scores={kit=1002}] run function du-in:kit/jerma/ability/item
execute if entity @s[scores={kit=1003}] run function du-in:kit/impostor/ability/item

execute if entity @s[scores={kit=1004}] run function du-in:kit/runza/ability/item

execute if entity @s[scores={kit=2015}] run function du-in:kit/saul/ability/item
execute if entity @s[scores={kit=42069}] run function du-in:kit/chungus/ability/item