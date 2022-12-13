scoreboard players remove @s slimeTimer 1

execute if entity @s[scores={slimeTimer=..1}] run particle minecraft:item_slime ~ ~ ~ 0.5 1 0.5 0 50 force
execute if entity @s[scores={slimeTimer=..1}] run playsound minecraft:entity.slime.death master @a ~ ~ ~ 10 1
tp @s[scores={slimeTimer=..1}] 216 -100 40
kill @s[scores={slimeTimer=..1}]