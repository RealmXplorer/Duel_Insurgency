# playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ .5 .1 1
# playsound minecraft:terraria.golhit master @a ~ ~ ~ 1 .1 1
# playsound minecraft:block.netherite_block.break master @a ~ ~ ~ 1 1
# playsound minecraft:block.copper.hit master @a ~ ~ ~ 1 1
# execute if entity @s[scores={yharimTimer=1..}] run playsound minecraft:block.netherite_block.hit master @a ~ ~ ~ 1 1
# execute if entity @s[scores={yharimTimer=1..}] run playsound minecraft:entity.iron_golem.repair master @a ~ ~ ~ 1 .7
scoreboard players reset @s hit