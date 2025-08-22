scoreboard players remove @s blakeTimer 1

execute if entity @s[scores={blakeTimer=..0}] run function du-in:kit/paz/ability/end

# execute if entity @s[scores={blakeTimer=..0}] as @e[type=minecraft:ender_pearl,tag=blakeTP] run function du-in:kit/paz/ability/teleport
# tag @s[scores={blakeTimer=..0}] remove blakeDuration
# scoreboard players reset @s[scores={blakeTimer=..0}] blakeTimer