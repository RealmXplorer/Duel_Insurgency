# execute if entity @s[scores={healthHit=..0}] run function du-in:ingame/regentimer/regen
effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={Health=..19}] if entity @s[tag=!small,tag=!smaller,tag=!tiny] run playsound du-in:sfx.ut.heal master @a ~ ~ ~ 0.5 1.7
execute if entity @s[scores={Health=..17},tag=small] run playsound du-in:sfx.ut.heal master @a ~ ~ ~ 0.5 1.7
execute if entity @s[scores={Health=..15},tag=smaller] run playsound du-in:sfx.ut.heal master @a ~ ~ ~ 0.5 1.7
execute if entity @s[scores={Health=..13},tag=tiny] run playsound du-in:sfx.ut.heal master @a ~ ~ ~ 0.5 1.7

scoreboard players set @s regenTimer 0