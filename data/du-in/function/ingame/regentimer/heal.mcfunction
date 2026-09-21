# execute if entity @s[scores={healthHit=..0}] run function du-in:ingame/regentimer/regen
effect give @s minecraft:instant_health 1 0 true
scoreboard players set @s regenTimer 0

#Timer Test
execute if entity @s[scores={Health=..17},tag=small] run return run playsound du-in:sfx.ut.heal master @a ~ ~ ~ 0.5 1.7
execute if entity @s[scores={Health=..15},tag=smaller] run return run playsound du-in:sfx.ut.heal master @a ~ ~ ~ 0.5 1.7
execute if entity @s[scores={Health=..13},tag=tiny] run return run playsound du-in:sfx.ut.heal master @a ~ ~ ~ 0.5 1.7

#Medium
execute if entity @s[scores={Health=..19},tag=!small,tag=!smaller,tag=!tiny] run playsound du-in:sfx.ut.heal master @a ~ ~ ~ 0.5 1.7
