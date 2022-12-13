execute if entity @s[scores={regenTimer=99,healthHit=..0}] run function du-in:ingame/regentimer/regen
execute if entity @s[scores={regenTimer=100..}] run scoreboard players set @s regenTimer 0