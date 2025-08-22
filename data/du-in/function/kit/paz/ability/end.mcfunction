#Teleport
execute as @e[type=minecraft:ender_pearl,tag=blakeTP] run function du-in:kit/paz/ability/teleport

#End
tag @s remove blakeDuration
scoreboard players reset @s blakeTimer