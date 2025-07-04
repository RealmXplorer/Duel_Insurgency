execute unless entity @s[scores={creepSkin=1..}] run playsound minecraft:entity.creeper.hurt voice @a ~ ~ ~ 0.2 1.75
execute if entity @s[scores={creepSkin=1}] run playsound minecraft:gingerbread.voice voice @a ~ ~ ~ 0.2 0.75
playsound minecraft:entity.player.attack.nodamage voice @a ~ ~ ~ 0.2 0.2
#scoreboard players reset @s jump
