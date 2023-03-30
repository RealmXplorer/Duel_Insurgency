scoreboard players remove @s parryDuration 1

attribute @s generic.knockback_resistance base set 1
attribute @s generic.armor base set 100

execute if entity @s[scores={parryDuration=..0}] run function du-in:kit/all/parry/end_parry