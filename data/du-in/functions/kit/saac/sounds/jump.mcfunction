playsound minecraft:saac.jump master @a ~ ~ ~ 0.2 1
execute if entity @s[scores={saacMoneyCheck=50..}] run playsound minecraft:block.chain.fall master @a ~ ~ ~ 0.2 1
scoreboard players reset @s jump