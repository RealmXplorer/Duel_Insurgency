#This function runs if player kills self
scoreboard players remove @s killIngame 1
playsound minecraft:entity.blaze.death master @a ~ ~ ~ 2 .95
playsound minecraft:entity.allay.hurt master @a ~ ~ ~ 2 .5
tag @s remove suicide