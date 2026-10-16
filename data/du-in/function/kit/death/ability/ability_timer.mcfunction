scoreboard players remove @s deathAbilityTimer 1

execute if entity @s[scores={deathAbilityTimer=..0}] run function du-in:kit/death/ability/end
