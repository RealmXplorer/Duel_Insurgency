execute store result score @s[gamemode=!spectator] appleCount run clear @s snowball 0

execute if entity @s[scores={appleCount=..0}] run function du-in:kit/jack_horner/ability/poison_apple/end