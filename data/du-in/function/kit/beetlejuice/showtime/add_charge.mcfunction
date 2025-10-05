#Add charge to Beetlejuice secondary if non-beetlejuice is hurt.
scoreboard players add @a[scores={kit=1006}] beetleDamage 1
execute as @a[scores={kit=1006}] run playsound minecraft:ralsei.graze master @s ~ ~ ~ 1 2
tag @a[scores={kit=1006,beetleDamage=7..},tag=!maxBeetleDamage] add maxBeetleDamage