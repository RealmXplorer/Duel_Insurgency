#Give magic ability
execute store result score @s magicCount run random value 1..7

execute if entity @s[scores={magicCount=1},tag=!sabotaged] run function du-in:kit/jack_horner/ability/poison_apple/give
execute if entity @s[scores={magicCount=2},tag=!sabotaged] run function du-in:kit/jack_horner/ability/midas/give
execute if entity @s[scores={magicCount=3},tag=!sabotaged] run function du-in:kit/jack_horner/ability/trident/give
execute if entity @s[scores={magicCount=4},tag=!sabotaged] run function du-in:kit/jack_horner/ability/unicorn_bow/give
execute if entity @s[scores={magicCount=5},tag=!sabotaged] run function du-in:kit/jack_horner/ability/phoenix/give
execute if entity @s[scores={magicCount=6},tag=!sabotaged] run function du-in:kit/jack_horner/ability/hatchet/give
execute if entity @s[scores={magicCount=7},tag=!sabotaged] run function du-in:kit/jack_horner/ability/drink/give
#execute if entity @s[tag=!magicBag,scores={magicCount=8},tag=!sabotaged] run function du-in:kit/jack_horner/ability/ball/give


execute if entity @s[tag=sabotaged] run function du-in:kit/jack_horner/ability/bug/give

playsound minecraft:sans.ability master @a ~ ~ ~ .15 1.15

tag @s remove kitActions