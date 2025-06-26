effect give @s minecraft:invisibility 1 1 true
playsound minecraft:gaster.back voice @a ~ ~ ~ 100 1 1
execute unless score @s gastSkin matches 1 run particle minecraft:smoke ~ ~1.5 ~ 0.2 0.5 0.2 0 150 force
# execute if score @s gastSkin matches 1 run particle minecraft:dust 0.75 0.90 1 1 ~ ~1.5 ~ 0.2 0.5 0.2 0 150 force
execute if score @s gastSkin matches 1 run particle minecraft:dust{color:[0.75, 0.90, 1.0],scale:1.0} ~ ~1.5 ~ 0.2 0.5 0.2 0 150 force
