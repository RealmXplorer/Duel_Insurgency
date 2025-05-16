#Kill grave if far from aoe cloud
execute if entity @s[tag=grave] unless entity @e[type=armor_stand,tag=grave,distance=..2] run function du-in:kit/zombie/ability/grave/sand

#Flowey's stems
execute if entity @s[tag=floweyStem] run function du-in:kit/flowey/ability/stem