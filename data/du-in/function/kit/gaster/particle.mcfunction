execute unless entity @s[scores={gastSkin=1}] run particle minecraft:smoke ~ ~1.5 ~ 0.2 0.5 0.2 0 150 force
# execute if entity @s[scores={gastSkin=1}] run particle minecraft:dust 0.75 0.90 1 1 ~ ~1.5 ~ 0.2 0.5 0.2 0 150 force
execute if entity @s[scores={gastSkin=1}] run particle minecraft:dust{color:[0.75, 0.90, 1.0],scale:1.0} ~ ~1.5 ~ 0.2 0.5 0.2 0 150 force

execute unless entity @s[scores={gastSkin=1}] run playsound minecraft:gaster.ability master @a ~ ~ ~ 100 1
execute if entity @s[scores={gastSkin=1}] run playsound minecraft:ghost.go master @a ~ ~ ~ 100 1
execute unless entity @s[scores={gastSkin=1..}] run playsound minecraft:entity.witch.celebrate master @a ~ ~ ~ 100 .1
execute if entity @s[scores={gastSkin=1}] run playsound minecraft:ghost.away master @a ~ ~ ~ 100 1
execute if entity @s[scores={gastSkin=2}] run playsound minecraft:spamton.laugh master @a ~ ~ ~ 10 1
playsound minecraft:sans.ability master @a ~ ~ ~ 100 1
playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 100 0.1