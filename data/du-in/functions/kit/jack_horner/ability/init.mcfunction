#Give magic ability
execute store result score @s magicCount run random value 1..6
execute if entity @s[scores={magicCount=1},tag=!magicBag,tag=!sabotaged] run function du-in:kit/jack_horner/ability/poison_apple/give
execute if entity @s[scores={magicCount=2},tag=!magicBag,tag=!sabotaged] run function du-in:kit/jack_horner/ability/ball/give
execute if entity @s[scores={magicCount=3},tag=!magicBag,tag=!sabotaged] run function du-in:kit/jack_horner/ability/midas/give
execute if entity @s[scores={magicCount=4},tag=!magicBag,tag=!sabotaged] run function du-in:kit/jack_horner/ability/trident/give
execute if entity @s[scores={magicCount=5},tag=!magicBag,tag=!sabotaged] run function du-in:kit/jack_horner/ability/unicorn_bow/give
execute if entity @s[scores={magicCount=6},tag=!magicBag,tag=!sabotaged] run function du-in:kit/jack_horner/ability/phoenix/give


execute if entity @s[tag=!magicBag,tag=sabotaged] run function du-in:kit/jack_horner/ability/bug/give

playsound minecraft:sans.ability master @a ~ ~ ~ .15 1.15

tag @s remove kitActions