execute unless entity @s[scores={springSkin=6}] run playsound minecraft:block.netherite_block.hit master @a ~ ~ ~ 3 0.5
execute unless entity @s[scores={springSkin=5..6}] run playsound minecraft:block.netherrack.break master @a ~ ~ ~ 1 1

execute if entity @s[scores={springSkin=6}] run playsound du-in:kit.jack_torrance.hit master @a ~ ~ ~ 3 1
