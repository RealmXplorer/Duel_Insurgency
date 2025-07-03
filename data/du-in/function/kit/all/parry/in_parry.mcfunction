scoreboard players remove @s parryDuration 1

#attribute @s knockback_resistance base set 1
#attribute @s armor base set 100
#attribute @s armor_toughness base set 100

particle minecraft:instant_effect ~ ~1 ~ 0.25 0.25 0.25 0.5 4 force

execute if entity @s[scores={parryDuration=..0}] run function du-in:kit/all/parry/end