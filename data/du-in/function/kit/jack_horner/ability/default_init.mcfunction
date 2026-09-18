#Give magic ability
execute store result score @s magicCount run random value 1..7
#scoreboard players set @s magicCount 2

playsound du-in:sfx.ut.ability master @a ~ ~ ~ .15 1.15

tag @s remove kitActions

#If sabotaged
execute if entity @s[tag=sabotaged] run return run function du-in:kit/jack_horner/ability/bug/give

#If not sabotaged
execute if entity @s[scores={magicCount=1}] run function du-in:kit/jack_horner/ability/poison_apple/give
execute if entity @s[scores={magicCount=2}] run function du-in:kit/jack_horner/ability/midas/give
execute if entity @s[scores={magicCount=3}] run function du-in:kit/jack_horner/ability/trident/give
execute if entity @s[scores={magicCount=4}] run function du-in:kit/jack_horner/ability/unicorn_bow/give
execute if entity @s[scores={magicCount=5}] run function du-in:kit/jack_horner/ability/phoenix/give
execute if entity @s[scores={magicCount=6}] run function du-in:kit/jack_horner/ability/hatchet/give
execute if entity @s[scores={magicCount=7}] run function du-in:kit/jack_horner/ability/drink/give
#execute if entity @s[scores={magicCount=8}] run function du-in:kit/jack_horner/ability/ball/give