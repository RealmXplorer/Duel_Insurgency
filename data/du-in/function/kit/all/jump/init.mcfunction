#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Run kit-specific functions in "(kit)/events/kill"
execute at @s run function du-in:kit/all/jump/find_kit with storage du-in:main player

# scoreboard players reset @s jumpResetTimer
# scoreboard players add @s bHop 1
# execute if entity @s[scores={bHop=1}] run function du-in:kit/all/attribute/bhop/speed_1
# execute if entity @s[scores={bHop=2}] run function du-in:kit/all/attribute/bhop/speed_2
# execute if entity @s[scores={bHop=3}] run function du-in:kit/all/attribute/bhop/speed_3
# execute if entity @s[scores={bHop=4}] run function du-in:kit/all/attribute/bhop/speed_4
# execute if entity @s[scores={bHop=5}] run function du-in:kit/all/attribute/bhop/speed_5
# execute if entity @s[scores={bHop=6}] run function du-in:kit/all/attribute/bhop/speed_6
# execute if entity @s[scores={bHop=7}] run function du-in:kit/all/attribute/bhop/speed_7
# execute if entity @s[scores={bHop=8}] run function du-in:kit/all/attribute/bhop/speed_8
# execute if entity @s[scores={bHop=9}] run function du-in:kit/all/attribute/bhop/speed_9
# execute if entity @s[scores={bHop=10}] run function du-in:kit/all/attribute/bhop/speed_10
# execute if entity @s[scores={bHop=11}] run function du-in:kit/all/attribute/bhop/speed_11