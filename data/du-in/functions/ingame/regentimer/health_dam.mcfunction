scoreboard players reset @s healthTimer
scoreboard players set @s regenTimer 0
execute if entity @s[scores={healthHit=1..}] run scoreboard players set @s healthHit 0