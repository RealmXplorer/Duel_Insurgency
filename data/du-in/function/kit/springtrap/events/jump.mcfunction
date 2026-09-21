execute unless entity @s[scores={springSkin=6}] run playsound minecraft:block.netherite_block.step master @a ~ ~ ~ 1 0.25
execute unless entity @s[scores={springSkin=6}] run playsound minecraft:block.netherrack.step master @a ~ ~ ~ .2 1
playsound minecraft:entity.player.attack.nodamage master @a ~ ~ ~ 0.2 0.2
#scoreboard players reset @s jump