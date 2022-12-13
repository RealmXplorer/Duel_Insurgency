scoreboard players remove @s blakeTimer 1

execute if entity @s[scores={blakeTimer=..0}] as @e[type=minecraft:ender_pearl,tag=blakeTP] run function du-in:kit/paz/ability/teleport
scoreboard players reset @s[scores={blakeTimer=..0}] blakeTimer