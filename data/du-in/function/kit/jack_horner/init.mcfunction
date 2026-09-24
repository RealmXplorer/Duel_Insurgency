
#If Holding item
# execute if entity @s[tag=poisonApple] run function du-in:kit/jack_horner/ability/poison_apple/run
execute if entity @s[tag=poisonApple] unless items entity @s container.* snowball run function du-in:kit/jack_horner/ability/poison_apple/end

#execute if entity @s[tag=unicornBow] run function du-in:kit/jack_horner/ability/unicorn_bow/run
execute if entity @s[tag=unicornBow,scores={crossbowShoot=1..}] run function du-in:kit/jack_horner/ability/unicorn_bow/end

#execute if entity @s[tag=asgoreTrident] run function du-in:kit/jack_horner/ability/trident/run
execute if entity @s[tag=asgoreTrident] unless items entity @s container.* trident run function du-in:kit/jack_horner/ability/trident/end

#execute if entity @s[tag=theHatchet] run function du-in:kit/jack_horner/ability/hatchet/run
execute if entity @s[tag=theHatchet] unless items entity @s container.* stone_axe run function du-in:kit/jack_horner/ability/hatchet/end

execute if entity @s[scores={shrunkTimer=0..}] run function du-in:kit/jack_horner/ability/drink/timer

#NON VILLAGER
#execute if entity @s[tag=!stolen] run function du-in:kit/jack_horner/constant