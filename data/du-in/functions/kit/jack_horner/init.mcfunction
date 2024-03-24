# Ability ITEM #
# execute if entity @s[level=1] run function du-in:kit/jack_horner/ability/item

#Use ability
# execute if entity @s[tag=kitActions,tag=!magicBag,tag=!void] run function du-in:kit/jack_horner/ability/default_init
# execute if entity @s[tag=kitActions,tag=!magicBag,tag=void] run function du-in:kit/jack_horner/ability/void_init
# execute if entity @s[tag=kitActions,tag=magicBag] run function du-in:kit/jack_horner/ability/init_magic

execute if entity @s[tag=poisonApple] run function du-in:kit/jack_horner/ability/poison_apple/run

execute if entity @s[tag=unicornBow] run function du-in:kit/jack_horner/ability/unicorn_bow/run

execute if entity @s[tag=asgoreTrident] run function du-in:kit/jack_horner/ability/trident/run

#NON VILLAGER
execute if entity @s[tag=!stolen] run function du-in:kit/jack_horner/constant