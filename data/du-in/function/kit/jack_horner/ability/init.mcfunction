execute if entity @s[tag=kitActions,tag=!magicBag,tag=!void] run function du-in:kit/jack_horner/ability/default_init
execute if entity @s[tag=kitActions,tag=!magicBag,tag=void] run function du-in:kit/jack_horner/ability/void_init
execute if entity @s[tag=kitActions,tag=magicBag] run function du-in:kit/jack_horner/ability/init_magic