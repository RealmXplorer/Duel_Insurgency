execute unless entity @e[distance=0.05..3] unless entity @s[scores={parryTimer=1..}] if blocks ~ ~1 ~ ~ ~1 ~ ~ ~-.025 ~ all run function du-in:kit/cuphead/parry/miss
execute unless blocks ~ ~1 ~ ~ ~1 ~ ~ ~-.025 ~ all run function du-in:kit/cuphead/parry/fail
execute if entity @s[scores={parryTimer=1..}] run function du-in:kit/cuphead/parry/fail

execute if entity @e[tag=projectile,distance=..4] unless entity @s[scores={parryTimer=1..}] if blocks ~ ~1 ~ ~ ~1 ~ ~ ~-.025 ~ all run function du-in:kit/cuphead/parry/void/success
execute if entity @e[type=skeleton,tag=gonerThing,distance=0.05..3] unless entity @s[scores={parryTimer=1..}] if blocks ~ ~1 ~ ~ ~1 ~ ~ ~-.025 ~ all run function du-in:kit/cuphead/parry/void/success


tag @s remove secKitActions
