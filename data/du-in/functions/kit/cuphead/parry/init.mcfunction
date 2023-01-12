execute unless entity @e[distance=0.05..3] unless entity @s[scores={parryTimer=1..}] if blocks ~ ~1 ~ ~ ~1 ~ ~ ~-.025 ~ all run function du-in:kit/cuphead/parry/miss
execute unless blocks ~ ~1 ~ ~ ~1 ~ ~ ~-.025 ~ all run function du-in:kit/cuphead/parry/fail
execute if entity @s[scores={parryTimer=1..}] run function du-in:kit/cuphead/parry/fail

execute if entity @e[tag=projectile,distance=..4] unless entity @s[scores={parryTimer=1..}] if blocks ~ ~1 ~ ~ ~1 ~ ~ ~-.025 ~ all run function du-in:kit/cuphead/parry/success
execute if entity @a[tag=playing,gamemode=!spectator,distance=0.05..3] unless entity @s[scores={parryTimer=1..}] if blocks ~ ~1 ~ ~ ~1 ~ ~ ~-.025 ~ all run function du-in:kit/cuphead/parry/success


tag @s remove secKitActions
