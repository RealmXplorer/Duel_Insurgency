
# playsound du-in:kit.asriel.saber master @a ~ ~ ~ 1 1.25
#particle minecraft:electric_spark ~ ~ ~ 1.5 1.5 1.5 1 50

execute as @n[type=armor_stand,tag=roryDisplay] if score @s player = @n[type=armor_stand,tag=roryAbility] player run function du-in:kit/susie/ability/buster/kill
execute as @n[type=item_display,tag=roryAbility] if score @s player = @n[type=armor_stand,tag=roryAbility] player run function du-in:kit/susie/ability/buster/kill
tp @s 0.0 0.0 0.0
kill @s

# execute if entity @s[scores={starTravelTime=..-10}] as @n[type=armor_stand,tag=roryDisplay] if score @s player = @n[type=armor_stand,tag=roryAbility] player run function du-in:kit/susie/ability/buster/kill
# execute if entity @s[scores={starTravelTime=..-10}] as @n[type=item_display,tag=roryAbility] if score @s player = @n[type=armor_stand,tag=roryAbility] player run function du-in:kit/susie/ability/buster/kill
# execute if entity @s[scores={starTravelTime=..-10}] run tp @s 0.0 0.0 0.0
# execute if entity @s[scores={starTravelTime=..-10}] run kill @s
