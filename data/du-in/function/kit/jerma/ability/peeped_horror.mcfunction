kill @s
#damage @s 10000 magic by @p
playsound minecraft:entity.allay.death master @a ~ ~ ~ 100 1 0.7
tag @s remove peepedHorror
tag @s remove jermaDuration
scoreboard players reset @s jermaTimer