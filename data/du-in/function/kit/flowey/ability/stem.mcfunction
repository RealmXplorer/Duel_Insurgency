execute unless entity @s[scores={floweyArrowTimer=-99..}] run scoreboard players set @s floweyArrowTimer 10
scoreboard players remove @s floweyArrowTimer 1

execute if entity @s[scores={floweyArrowTimer=..1}] at @s run playsound minecraft:block.grass.break master @a ~ ~ ~ 10 1

execute if entity @s[scores={floweyArrowTimer=..1}] at @s run particle minecraft:block{block_state:"minecraft:tall_grass"} ~ ~1 ~ 0.2 0.2 0.2 1 10 force

kill @s[scores={floweyArrowTimer=..1}]