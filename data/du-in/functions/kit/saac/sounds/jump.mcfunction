playsound minecraft:saac.jump master @a ~ ~ ~ 0.2 1
execute if entity @s[scores={saacMoneyCheck=50..}] run playsound minecraft:block.chain.fall master @a ~ ~ ~ 0.2 1
playsound minecraft:entity.player.attack.nodamage master @a ~ ~ ~ 0.2 0.2
scoreboard players reset @s jump