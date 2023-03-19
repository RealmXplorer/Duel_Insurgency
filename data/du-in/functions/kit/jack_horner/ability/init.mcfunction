#Give magic ability
execute if entity @s[scores={magicCount=1},tag=!magicBag] run function du-in:kit/jack_horner/ability/umbrella/give
execute if entity @s[scores={magicCount=2},tag=!magicBag] run function du-in:kit/jack_horner/ability/poison_apple/give
execute if entity @s[scores={magicCount=3},tag=!magicBag] run function du-in:kit/jack_horner/ability/unicorn_bow/give
execute if entity @s[scores={magicCount=4},tag=!magicBag] run function du-in:kit/jack_horner/ability/midas/give

tag @s remove kitActions