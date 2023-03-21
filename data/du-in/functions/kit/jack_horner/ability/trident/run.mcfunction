execute store result score @s[gamemode=!spectator] tridentCount run clear @s[tag=!kitMenu] trident 0

execute at @e[type=trident] if entity @s[distance=..1.75,scores={trident=1..}] run playsound minecraft:asgore.throw master @a ~ ~ ~ 1
scoreboard players reset @s[scores={trident=1..}] trident

execute if entity @s[scores={tridentCount=..0}] run function du-in:kit/jack_horner/ability/trident/end