scoreboard players remove @s yodaTimer 1

execute if entity @s[scores={yodaTimer=2..}] run function du-in:kit/yoda/ability/absorb

execute if entity @s[scores={yodaTimer=1,yodaAbsorb=1..}] run function du-in:kit/yoda/ability/calculate_damage
execute if entity @s[scores={yodaTimer=1,yodaAbsorb=0}] run function du-in:kit/yoda/ability/fizzle

execute if entity @s[scores={yodaTimer=0}] run function du-in:kit/yoda/ability/end