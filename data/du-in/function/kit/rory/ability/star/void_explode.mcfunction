# execute if entity @s[scores={starTravelTime=0}] run summon creeper ~ ~ ~ {Fuse:0b}
execute store result storage du-in:dark_star player.current int 1 run scoreboard players get @s player

execute as @e[type=skeleton,distance=..6] run function du-in:kit/rory/ability/star/explode_damage with storage du-in:dark_star player

execute as @n[type=armor_stand,tag=roryDisplay] if score @s player = @n[type=armor_stand,tag=roryAbility] player run function du-in:kit/susie/ability/buster/kill
execute as @n[type=item_display,tag=roryAbility] if score @s player = @n[type=armor_stand,tag=roryAbility] player run function du-in:kit/susie/ability/buster/kill
tp @s 0.0 0.0 0.0
kill @s

# execute if entity @s[scores={starTravelTime=..-10}] as @n[type=armor_stand,tag=roryDisplay] if score @s player = @n[type=armor_stand,tag=roryAbility] player run function du-in:kit/susie/ability/buster/kill
# execute if entity @s[scores={starTravelTime=..-10}] as @n[type=item_display,tag=roryAbility] if score @s player = @n[type=armor_stand,tag=roryAbility] player run function du-in:kit/susie/ability/buster/kill
# execute if entity @s[scores={starTravelTime=..-10}] run tp @s 0.0 0.0 0.0
# execute if entity @s[scores={starTravelTime=..-10}] run kill @s
