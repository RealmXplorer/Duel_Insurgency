playsound minecraft:block.netherite_block.step master @a ~ ~ ~ 1 0.5
execute unless entity @s[scores={springSkin=5}] run playsound minecraft:block.netherrack.step master @a ~ ~ ~ .3 1.5
#scoreboard players reset @s step
#scoreboard players reset @s sprint